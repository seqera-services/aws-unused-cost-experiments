#!/usr/bin/env nextflow

process testLoad {

    output:
    val "light_done"
    
    script:
    """
    echo "Starting testLoad task..."
    sleep 300  // Simulate 5 minutes of work
    echo "testLoad task completed"
    """
}

// Define the workflow
workflow {
    // Run all tasks in parallel
    testLoad()
} 