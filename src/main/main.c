//DMX Christmas tree

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "freertos/FreeRTOS.h"
#include "freertos/semphr.h"
#include "freertos/task.h"
#include "esp_err.h"
#include "esp_log.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "driver/gpio.h"
#include "freertos/queue.h" 
#include "driver/spi_master.h"

#include "main.h"


void app_main(void)
{
    esp_err_t ret;
    spi_bus_config_t buscfg={
        .miso_io_num=-1,
        .mosi_io_num=PIN_NUM_MOSI,
        .sclk_io_num=PIN_NUM_CLK,
        .quadwp_io_num=-1,
        .quadhd_io_num=-1,
        .max_transfer_sz=4096
    };
    spi_device_handle_t spi;

    spi_device_interface_config_t devcfg={
        .clock_speed_hz=10000,           //Clock out at 10 kHz
        .mode=0,                                //SPI mode 0
        .spics_io_num=-1,               //CS pin not used
        .queue_size=7,                 
    };

    ret=spi_bus_initialize(VSPI_HOST, &buscfg, 2);
    ret=spi_bus_add_device(VSPI_HOST, &devcfg, &spi);

    uint8_t data[] = {0,0,0,0,
        254,100,0,0,
        254,0,100,0,
        254,0,0,100,
        254,100,0,0,
        254,0,100,0,
        254,0,0,100,        
        254,100,0,0,
        254,0,100,0,
        254,0,0,100,
           254,100,0,0,
        254,0,100,0,
        254,0,0,100,
               254,100,0,0,
        254,0,100,0,
        254,0,0,100,
               254,100,0,0,
        254,0,100,0,
        254,0,0,100,
               254,100,0,0,
        254,0,100,0,
        254,0,0,100,
               254,100,0,0,
        254,0,100,0,
        0,0,0,0,0};

    spi_transaction_t t;
    memset(&t, 0, sizeof(t));  
    t.length=109*8; 
    t.tx_buffer=data;               

    ret = spi_device_transmit(spi, &t);
}