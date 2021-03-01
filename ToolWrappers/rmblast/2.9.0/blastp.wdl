version 1.0

task Blastp {
  command <<<
    blastp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}