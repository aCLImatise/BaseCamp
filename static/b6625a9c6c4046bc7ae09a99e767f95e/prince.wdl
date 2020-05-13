version 1.0

task Prince {
  input {
    String boostBoostOutput
    String targetTargetOutput
    String templatesTemplates
    String targetTargetFile
    String boostingBoostingFile
    String kK
    String copyCopyNumber
    String primersPrimers
    String numNumProcs
  }
  command <<<
    prince \
      ~{if defined(boostBoostOutput) then ("--boost_output " +  '"' + boostBoostOutput + '"') else ""} \
      ~{if defined(targetTargetOutput) then ("--target_output " +  '"' + targetTargetOutput + '"') else ""} \
      ~{if defined(templatesTemplates) then ("--templates " +  '"' + templatesTemplates + '"') else ""} \
      ~{if defined(targetTargetFile) then ("--target_file " +  '"' + targetTargetFile + '"') else ""} \
      ~{if defined(boostingBoostingFile) then ("--boosting_file " +  '"' + boostingBoostingFile + '"') else ""} \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{if defined(copyCopyNumber) then ("--copynumber " +  '"' + copyCopyNumber + '"') else ""} \
      ~{if defined(primersPrimers) then ("--primers " +  '"' + primersPrimers + '"') else ""} \
      ~{if defined(numNumProcs) then ("--num_procs " +  '"' + numNumProcs + '"') else ""}
  >>>
}