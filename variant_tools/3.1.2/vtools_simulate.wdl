version 1.0

task VtoolsSimulate {
  input {
    String seedSeed
    String replicatesReplicates
    String jobsJobs
    Boolean vV
    String? specSpecFile
    String? modelsModels
  }
  command <<<
    vtools simulate \
      ~{specSpecFile} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(replicatesReplicates) then ("--replicates " +  '"' + replicatesReplicates + '"') else ""} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{modelsModels}
  >>>
}