version 1.0

task MhcflurryClass1SelectPanAlleleModels {
  input {
    File dataData
    String modelsModelsDir
    String outOutModelsDir
    String minMinModelsPerFold
    String maxMaxModelsPerFold
    String massMassSpecRegex
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
    mhcflurry-class1-select-pan-allele-models \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(modelsModelsDir) then ("--models-dir " +  '"' + modelsModelsDir + '"') else ""} \
      ~{if defined(outOutModelsDir) then ("--out-models-dir " +  '"' + outOutModelsDir + '"') else ""} \
      ~{if defined(minMinModelsPerFold) then ("--min-models-per-fold " +  '"' + minMinModelsPerFold + '"') else ""} \
      ~{if defined(maxMaxModelsPerFold) then ("--max-models-per-fold " +  '"' + maxMaxModelsPerFold + '"') else ""} \
      ~{if defined(massMassSpecRegex) then ("--mass-spec-regex " +  '"' + massMassSpecRegex + '"') else ""} \
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