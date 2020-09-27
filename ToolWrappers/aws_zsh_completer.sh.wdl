version 1.0

task AwsZshCompletersh {
  command <<<
    aws_zsh_completer_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}