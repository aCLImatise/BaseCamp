version 1.0

task TripailleAnalysisDeleteOrphans {
  input {
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille analysis delete_orphans \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}