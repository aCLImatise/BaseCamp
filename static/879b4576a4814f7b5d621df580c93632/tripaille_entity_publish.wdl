version 1.0

task TripailleEntityPublish {
  input {
    String? types
    String? job_name
    Boolean? no_wait
    String status
  }
  command <<<
    tripaille entity publish \
      ~{status} \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""}
  >>>
  parameter_meta {
    types: "List of entity types to be published (e.g. Gene mRNA,\\ndefault: all)"
    job_name: "Name of the job"
    no_wait: "Return immediately without waiting for job completion"
    status: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}