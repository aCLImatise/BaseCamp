version 1.0

task PecheckWrapper.py {
  input {
    String gzipGzip
    String jobsJobs
    Boolean forceForce
    Boolean dryDryRun
    String? outputOutput
    String? inputInput
  }
  command <<<
    pecheck-wrapper.py \
      ~{outputOutput} \
      ~{if defined(gzipGzip) then ("--gzip " +  '"' + gzipGzip + '"') else ""} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{inputInput}
  >>>
}