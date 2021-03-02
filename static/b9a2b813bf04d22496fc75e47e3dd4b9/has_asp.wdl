version 1.0

task Hasasp {
  command <<<
    has_asp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}