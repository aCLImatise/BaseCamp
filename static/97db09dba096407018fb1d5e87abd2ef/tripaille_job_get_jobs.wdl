version 1.0

task TripailleJobGetJobs {
  input {
    Int? job_id
  }
  command <<<
    tripaille job get_jobs \
      ~{if defined(job_id) then ("--job_id " +  '"' + job_id + '"') else ""}
  >>>
  parameter_meta {
    job_id: "job id"
  }
}