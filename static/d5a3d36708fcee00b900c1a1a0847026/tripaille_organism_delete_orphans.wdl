version 1.0

task TripailleOrganismDeleteOrphans {
  input {
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille organism delete_orphans \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}