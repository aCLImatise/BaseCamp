version 1.0

task Dx {
  input {
    Boolean? env_help
    String variables
  }
  command <<<
    dx \
      ~{variables} \
      ~{if (env_help) then "--env-help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0"
  }
  parameter_meta {
    env_help: "Display help message for overriding environment"
    variables: "--version   show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
  }
}