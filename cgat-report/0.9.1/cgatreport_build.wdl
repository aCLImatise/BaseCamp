version 1.0

task CgatreportBuild {
  input {
    String? num_jobs
    String? verbose
  }
  command <<<
    cgatreport-build \
      ~{if defined(num_jobs) then ("--num-jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    num_jobs: "number of parallel jobs to run [default=2]"
    verbose: "loglevel. The higher, the more output [default=10]"
  }
}