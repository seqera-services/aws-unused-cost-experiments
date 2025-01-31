#!/usr/bin/env nextflow

process testLoad {

    container 'quay.io/nextflow/bash'

    output:
    val "light_done"
    
    script:
    """
    sleep 300
    """
}

// Define the workflow
workflow {
    // Run all tasks in parallel
    testLoad()
} 