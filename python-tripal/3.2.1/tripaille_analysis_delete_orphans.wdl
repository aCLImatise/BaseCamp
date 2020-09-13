version 1.0

task TripailleAnalysisDeleteOrphans {
  input {
    String? job_name
    Boolean? no_wait
    String status
  }
  command <<<
    tripaille analysis delete_orphans \
      ~{status} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""}
  >>>
  parameter_meta {
    job_name: "Name of the job"
    no_wait: "Return immediately without waiting for job completion"
    status: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}