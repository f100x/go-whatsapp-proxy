#!/bin/bash

# Función para ejecutar run.sh cada 30 minutos
run_every_3_hours() {
    while true; do
        # kill prev copy if exists
        pkill -e -f wa

        # start a new one
        ./wa &

        # Espera 30 minutos antes de la próxima ejecución
        sleep 28800
    done
}

# Llama a la función para ejecutar run.sh cada 30 minutos
run_every_3_hours