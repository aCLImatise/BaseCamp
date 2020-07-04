version 1.0

task TripailleEntityPublish {
  input {
    String? types
    String? job_name
    Boolean? no_wait
  }
  command <<<
    tripaille entity publish \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{true="--no_wait" false="" no_wait}
  >>>
  parameter_meta {
    types: "List of entity types to be published (e.g. Gene mRNA, default: all)"
    job_name: "Name of the job"
    no_wait: "Return immediately without waiting for job completion"
  }
}