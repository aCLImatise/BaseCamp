version 1.0

task Fastaoverlap {
  command <<<
    fastaoverlap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}