version 1.0

task TripailleFeatureDeleteOrphans {
  input {
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille feature delete_orphans \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}