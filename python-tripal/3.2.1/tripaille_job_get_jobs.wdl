version 1.0

task TripailleJobGetJobs {
  input {
    Int jobJobId
  }
  command <<<
    tripaille job get_jobs \
      ~{if defined(jobJobId) then ("--job_id " +  '"' + jobJobId + '"') else ""}
  >>>
}