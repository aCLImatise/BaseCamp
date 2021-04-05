version 1.0

task ToilcwlrunnerCommandLineTools {
  input {
    Int? job_store
    Boolean? real_time_logging
    Boolean? loginfo
    String example_job_dot_yaml
  }
  command <<<
    toil_cwl_runner CommandLineTools \
      ~{example_job_dot_yaml} \
      ~{if defined(job_store) then ("--jobStore " +  '"' + job_store + '"') else ""} \
      ~{if (real_time_logging) then "--realTimeLogging" else ""} \
      ~{if (loginfo) then "--logInfo" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/toil:5.3.0--py_0"
  }
  parameter_meta {
    job_store: ":us-west-2:jobstore \\"
    real_time_logging: "\\"
    loginfo: "\\"
    example_job_dot_yaml: "Traceback (most recent call last):"
  }
  output {
    File out_stdout = stdout()
  }
}