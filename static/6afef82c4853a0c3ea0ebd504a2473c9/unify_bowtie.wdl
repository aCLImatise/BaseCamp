version 1.0

task UnifyBowtie.py {
  input {
    String jobJobId
    String varVarId
    String? bowtieBowtieOutdir
    String? chrChrSizePath
  }
  command <<<
    unify_bowtie.py \
      ~{bowtieBowtieOutdir} \
      ~{if defined(jobJobId) then ("-job_id " +  '"' + jobJobId + '"') else ""} \
      ~{if defined(varVarId) then ("-var_id " +  '"' + varVarId + '"') else ""} \
      ~{chrChrSizePath}
  >>>
}