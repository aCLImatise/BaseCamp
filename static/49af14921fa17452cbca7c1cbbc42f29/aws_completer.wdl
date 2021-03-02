version 1.0

task AwsCompleter {
  command <<<
    aws_completer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}