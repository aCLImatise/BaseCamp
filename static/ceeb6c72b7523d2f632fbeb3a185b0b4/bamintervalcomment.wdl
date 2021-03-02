version 1.0

task Bamintervalcomment {
  command <<<
    bamintervalcomment
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}