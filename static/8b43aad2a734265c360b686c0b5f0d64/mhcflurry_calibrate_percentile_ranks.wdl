version 1.0

task MhcflurryCalibratePercentileRanks {
  input {
    String predictionPredictionBatchSize
    String allelesAllelesPerWorkChunk
    String verbosityVerbosity
    String numNumJobs
    String backendBackend
    String gpusGpus
    String maxMaxWorkersPerGpu
    String maxMaxTasksPerWorker
    String workerWorkerLogDir
    String clusterClusterMaxRetries
  }
  command <<<
    mhcflurry-calibrate-percentile-ranks \
      ~{if defined(predictionPredictionBatchSize) then ("--prediction-batch-size " +  '"' + predictionPredictionBatchSize + '"') else ""} \
      ~{if defined(allelesAllelesPerWorkChunk) then ("--alleles-per-work-chunk " +  '"' + allelesAllelesPerWorkChunk + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(numNumJobs) then ("--num-jobs " +  '"' + numNumJobs + '"') else ""} \
      ~{if defined(backendBackend) then ("--backend " +  '"' + backendBackend + '"') else ""} \
      ~{if defined(gpusGpus) then ("--gpus " +  '"' + gpusGpus + '"') else ""} \
      ~{if defined(maxMaxWorkersPerGpu) then ("--max-workers-per-gpu " +  '"' + maxMaxWorkersPerGpu + '"') else ""} \
      ~{if defined(maxMaxTasksPerWorker) then ("--max-tasks-per-worker " +  '"' + maxMaxTasksPerWorker + '"') else ""} \
      ~{if defined(workerWorkerLogDir) then ("--worker-log-dir " +  '"' + workerWorkerLogDir + '"') else ""} \
      ~{if defined(clusterClusterMaxRetries) then ("--cluster-max-retries " +  '"' + clusterClusterMaxRetries + '"') else ""}
  >>>
}