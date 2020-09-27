version 1.0

task Cgatreportbuild {
  input {
    Int? num_jobs
    Int? verbose
  }
  command <<<
    cgatreport_build \
      ~{if defined(num_jobs) then ("--num-jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    num_jobs: "number of parallel jobs to run [default=2]"
    verbose: "loglevel. The higher, the more output [default=10]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}