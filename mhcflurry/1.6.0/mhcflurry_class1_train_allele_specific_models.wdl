version 1.0

task MhcflurryClass1TrainAlleleSpecificModels {
  input {
    File dataData
    String outOutModelsDir
    File hyperparametersHyperparameters
    Array[String]+ alleleAllele
    String minMinMeasurementsPerAllele
    String heldHeldOutFractionReciprocal
    String heldHeldOutFractionSeed
    Boolean ignoreIgnoreInequalities
    String nNModels
    String maxMaxEpochs
    File alleleAlleleSequences
    String saveSaveInterval
    String verbosityVerbosity
    String numNumJobs
    String backendBackend
    String gpusGpus
    String maxMaxWorkersPerGpu
    String maxMaxTasksPerWorker
    String workerWorkerLogDir
  }
  command <<<
    mhcflurry-class1-train-allele-specific-models \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(outOutModelsDir) then ("--out-models-dir " +  '"' + outOutModelsDir + '"') else ""} \
      ~{if defined(hyperparametersHyperparameters) then ("--hyperparameters " +  '"' + hyperparametersHyperparameters + '"') else ""} \
      ~{if defined(alleleAllele) then ("--allele " +  '"' + alleleAllele + '"') else ""} \
      ~{if defined(minMinMeasurementsPerAllele) then ("--min-measurements-per-allele " +  '"' + minMinMeasurementsPerAllele + '"') else ""} \
      ~{if defined(heldHeldOutFractionReciprocal) then ("--held-out-fraction-reciprocal " +  '"' + heldHeldOutFractionReciprocal + '"') else ""} \
      ~{if defined(heldHeldOutFractionSeed) then ("--held-out-fraction-seed " +  '"' + heldHeldOutFractionSeed + '"') else ""} \
      ~{true="--ignore-inequalities" false="" ignoreIgnoreInequalities} \
      ~{if defined(nNModels) then ("--n-models " +  '"' + nNModels + '"') else ""} \
      ~{if defined(maxMaxEpochs) then ("--max-epochs " +  '"' + maxMaxEpochs + '"') else ""} \
      ~{if defined(alleleAlleleSequences) then ("--allele-sequences " +  '"' + alleleAlleleSequences + '"') else ""} \
      ~{if defined(saveSaveInterval) then ("--save-interval " +  '"' + saveSaveInterval + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(numNumJobs) then ("--num-jobs " +  '"' + numNumJobs + '"') else ""} \
      ~{if defined(backendBackend) then ("--backend " +  '"' + backendBackend + '"') else ""} \
      ~{if defined(gpusGpus) then ("--gpus " +  '"' + gpusGpus + '"') else ""} \
      ~{if defined(maxMaxWorkersPerGpu) then ("--max-workers-per-gpu " +  '"' + maxMaxWorkersPerGpu + '"') else ""} \
      ~{if defined(maxMaxTasksPerWorker) then ("--max-tasks-per-worker " +  '"' + maxMaxTasksPerWorker + '"') else ""} \
      ~{if defined(workerWorkerLogDir) then ("--worker-log-dir " +  '"' + workerWorkerLogDir + '"') else ""}
  >>>
}