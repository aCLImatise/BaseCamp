version 1.0

task Awscmd {
  command <<<
    aws_cmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}