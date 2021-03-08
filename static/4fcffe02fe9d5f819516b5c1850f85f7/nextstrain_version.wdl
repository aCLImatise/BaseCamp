version 1.0

task NextstrainVersion {
  input {
    Boolean? verbose
  }
  command <<<
    nextstrain version \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextstrain-cli:3.0.3--py_0"
  }
  parameter_meta {
    verbose: "Show versions of individual Nextstrain components in the image\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}