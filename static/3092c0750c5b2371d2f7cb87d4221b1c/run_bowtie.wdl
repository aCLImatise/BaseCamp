version 1.0

task RunBowtie.py {
  input {
    Boolean bisBisMap
    String varVarId
    String jobJobId
    String? kmKmErDir
    String? bowtieBowtieDir
    String? indexIndexDir
    String? indexIndexName
  }
  command <<<
    run_bowtie.py \
      ~{kmKmErDir} \
      ~{true="-Bismap" false="" bisBisMap} \
      ~{if defined(varVarId) then ("-var_id " +  '"' + varVarId + '"') else ""} \
      ~{if defined(jobJobId) then ("-job_id " +  '"' + jobJobId + '"') else ""} \
      ~{bowtieBowtieDir} \
      ~{indexIndexDir} \
      ~{indexIndexName}
  >>>
}