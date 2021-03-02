version 1.0

task Blastn {
  command <<<
    blastn
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}