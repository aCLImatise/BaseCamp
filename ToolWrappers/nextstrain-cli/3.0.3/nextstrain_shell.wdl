version 1.0

task NextstrainShell {
  input {
    Boolean? help_all
    Directory directory
  }
  command <<<
    nextstrain shell \
      ~{directory} \
      ~{if (help_all) then "--help-all" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextstrain-cli:3.0.3--py_0"
  }
  parameter_meta {
    help_all: "Show a full help message of all options and exit"
    directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}