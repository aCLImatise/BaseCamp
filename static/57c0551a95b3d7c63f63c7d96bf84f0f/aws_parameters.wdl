version 1.0

task AwsParameters {
  input {
    String aws
    String var_command
    String subcommand
    String? parameters
  }
  command <<<
    aws parameters \
      ~{aws} \
      ~{var_command} \
      ~{subcommand} \
      ~{parameters}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    aws: ""
    var_command: ""
    subcommand: ""
    parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}