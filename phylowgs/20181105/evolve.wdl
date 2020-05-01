version 1.0

task Evolve.py {
  input {
    String outputOutputDir
    String writeWriteBackupsEvery
    String writeWriteStateEvery
    String burninBurninSamples
    String mcmcMcmcSamples
    String mhMhIterations
    String randomRandomSeed
    String tmpTmpDir
    String paramsParams
    String? ssmSsmFile
    String? cnvCnvFile
  }
  command <<<
    evolve.py \
      ~{ssmSsmFile} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(writeWriteBackupsEvery) then ("--write-backups-every " +  '"' + writeWriteBackupsEvery + '"') else ""} \
      ~{if defined(writeWriteStateEvery) then ("--write-state-every " +  '"' + writeWriteStateEvery + '"') else ""} \
      ~{if defined(burninBurninSamples) then ("--burnin-samples " +  '"' + burninBurninSamples + '"') else ""} \
      ~{if defined(mcmcMcmcSamples) then ("--mcmc-samples " +  '"' + mcmcMcmcSamples + '"') else ""} \
      ~{if defined(mhMhIterations) then ("--mh-iterations " +  '"' + mhMhIterations + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp-dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{if defined(paramsParams) then ("--params " +  '"' + paramsParams + '"') else ""} \
      ~{cnvCnvFile}
  >>>
}