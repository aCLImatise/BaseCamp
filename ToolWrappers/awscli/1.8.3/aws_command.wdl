version 1.0

task AwsCommand {
  input {
    String subcommand
    String? parameters
  }
  command <<<
    aws command \
      ~{subcommand} \
      ~{parameters}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    subcommand: ""
    parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}