version 1.0

task StartParallelPicrustJobspy {
  input {
    Boolean? verbose
    Boolean? make_jobs
    Boolean? submit_jobs
    Int? delay
    Int? num_jobs
  }
  command <<<
    start_parallel_picrust_jobs_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (make_jobs) then "--make_jobs" else ""} \
      ~{if (submit_jobs) then "--submit_jobs" else ""} \
      ~{if defined(delay) then ("--delay " +  '"' + delay + '"') else ""} \
      ~{if defined(num_jobs) then ("--num_jobs " +  '"' + num_jobs + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    make_jobs: "make the job files [default: none]"
    submit_jobs: "submit the job files [default: none]"
    delay: "Number of seconds to pause between launching each job\\n[default: 0]"
    num_jobs: "Number of jobs to group commands into. [default: 4]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}