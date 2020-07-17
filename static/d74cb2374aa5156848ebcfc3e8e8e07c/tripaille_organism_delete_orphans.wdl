version 1.0

task TripailleOrganismDeleteOrphans {
  input {
    String? job_name
    Boolean? no_wait
  }
  command <<<
    tripaille organism delete_orphans \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{true="--no_wait" false="" no_wait}
  >>>
  parameter_meta {
    job_name: "Name of the job"
    no_wait: "Return immediately without waiting for job completion"
  }
}