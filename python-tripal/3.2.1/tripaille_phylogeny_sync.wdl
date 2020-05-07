version 1.0

task TripaillePhylogenySync {
  input {
    String maxMaxSync
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille phylogeny sync \
      ~{if defined(maxMaxSync) then ("--max_sync " +  '"' + maxMaxSync + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}