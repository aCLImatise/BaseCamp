version 1.0

task NextstrainChecksetup {
  input {
    Boolean? set_default
  }
  command <<<
    nextstrain check_setup \
      ~{if (set_default) then "--set-default" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextstrain-cli:3.0.3--py_0"
  }
  parameter_meta {
    set_default: "Set the default environment to the first which passes check-\\nsetup. Checks run in the order: docker, native, aws-batch.\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}