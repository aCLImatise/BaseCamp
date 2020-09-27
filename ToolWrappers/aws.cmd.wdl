version 1.0

task Awscmd {
  command <<<
    aws_cmd
  >>>
  output {
    File out_stdout = stdout()
  }
}