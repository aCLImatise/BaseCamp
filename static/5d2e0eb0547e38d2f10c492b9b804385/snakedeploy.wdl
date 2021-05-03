version 1.0

task Snakedeploy {
  input {
    Boolean? quiet
    Boolean? verbose
    Boolean? log_disable_color
  }
  command <<<
    snakedeploy \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (log_disable_color) then "--log-disable-color" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/snakedeploy:0.1.1--pyhdfd78af_0"
  }
  parameter_meta {
    quiet: "suppress additional output."
    verbose: "verbose output for logging."
    log_disable_color: "Disable color for snakedeploy logging."
  }
  output {
    File out_stdout = stdout()
  }
}