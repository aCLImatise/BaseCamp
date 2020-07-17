version 1.0

task StartParallelPicrustJobs.py {
  input {
    Boolean? verbose
    Boolean? make_jobs
    Boolean? submit_jobs
    String? delay
    String? num_jobs
  }
  command <<<
    start_parallel_picrust_jobs.py \
      ~{true="--verbose" false="" verbose} \
      ~{true="--make_jobs" false="" make_jobs} \
      ~{true="--submit_jobs" false="" submit_jobs} \
      ~{if defined(delay) then ("--delay " +  '"' + delay + '"') else ""} \
      ~{if defined(num_jobs) then ("--num_jobs " +  '"' + num_jobs + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for debugging [default: False]"
    make_jobs: "make the job files [default: none]"
    submit_jobs: "submit the job files [default: none]"
    delay: "Number of seconds to pause between launching each job [default: 0]"
    num_jobs: "Number of jobs to group commands into. [default: 4]"
  }
}