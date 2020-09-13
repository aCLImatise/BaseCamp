version 1.0

task AwsCompleter {
  command <<<
    aws_completer
  >>>
  output {
    File out_stdout = stdout()
  }
}