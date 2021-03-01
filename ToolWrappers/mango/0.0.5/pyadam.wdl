version 1.0

task Pyadam {
  command <<<
    pyadam
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}