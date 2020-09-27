version 1.0

task StartParallelPicrustJobsTorquepy {
  input {
    Boolean? verbose
    Boolean? make_jobs
    Boolean? submit_jobs
    Int? delay
    String? queue
    Directory? job_dir
    Int? num_jobs
  }
  command <<<
    start_parallel_picrust_jobs_torque_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (make_jobs) then "--make_jobs" else ""} \
      ~{if (submit_jobs) then "--submit_jobs" else ""} \
      ~{if defined(delay) then ("--delay " +  '"' + delay + '"') else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(job_dir) then ("--job_dir " +  '"' + job_dir + '"') else ""} \
      ~{if defined(num_jobs) then ("--num_jobs " +  '"' + num_jobs + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    make_jobs: "make the job files [default: none]"
    submit_jobs: "submit the job files [default: none]"
    delay: "Number of seconds to pause between launching each job\\n[default: 0]"
    queue: "name of queue to submit to  [default: none]"
    job_dir: "directory to store the jobs [default: jobs/]"
    num_jobs: "Number of jobs to group commands into. [default: 100]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}