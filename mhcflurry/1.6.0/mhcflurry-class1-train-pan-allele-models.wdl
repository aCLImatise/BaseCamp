version 1.0

task MhcflurryClass1TrainPanAlleleModels {
  input {
    Boolean ignoreIgnoreInequalities
    String numNumFolds
    String numNumReplicates
    String maxMaxEpochs
    File alleleAlleleSequences
    String verbosityVerbosity
    Boolean debugDebug
    Boolean continueContinueIncomplete
    Boolean onlyOnlyInitialize
    String numNumJobs
    String backendBackend
    String gpusGpus
    String maxMaxWorkersPerGpu
    String maxMaxTasksPerWorker
    String workerWorkerLogDir
    String clusterClusterMaxRetries
  }
  command <<<
    mhcflurry-class1-train-pan-allele-models \
      ~{true="--ignore-inequalities" false="" ignoreIgnoreInequalities} \
      ~{if defined(numNumFolds) then ("--num-folds " +  '"' + numNumFolds + '"') else ""} \
      ~{if defined(numNumReplicates) then ("--num-replicates " +  '"' + numNumReplicates + '"') else ""} \
      ~{if defined(maxMaxEpochs) then ("--max-epochs " +  '"' + maxMaxEpochs + '"') else ""} \
      ~{if defined(alleleAlleleSequences) then ("--allele-sequences " +  '"' + alleleAlleleSequences + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--continue-incomplete" false="" continueContinueIncomplete} \
      ~{true="--only-initialize" false="" onlyOnlyInitialize} \
      ~{if defined(numNumJobs) then ("--num-jobs " +  '"' + numNumJobs + '"') else ""} \
      ~{if defined(backendBackend) then ("--backend " +  '"' + backendBackend + '"') else ""} \
      ~{if defined(gpusGpus) then ("--gpus " +  '"' + gpusGpus + '"') else ""} \
      ~{if defined(maxMaxWorkersPerGpu) then ("--max-workers-per-gpu " +  '"' + maxMaxWorkersPerGpu + '"') else ""} \
      ~{if defined(maxMaxTasksPerWorker) then ("--max-tasks-per-worker " +  '"' + maxMaxTasksPerWorker + '"') else ""} \
      ~{if defined(workerWorkerLogDir) then ("--worker-log-dir " +  '"' + workerWorkerLogDir + '"') else ""} \
      ~{if defined(clusterClusterMaxRetries) then ("--cluster-max-retries " +  '"' + clusterClusterMaxRetries + '"') else ""}
  >>>
}