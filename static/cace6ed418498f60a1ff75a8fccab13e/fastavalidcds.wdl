version 1.0

task Fastavalidcds {
  command <<<
    fastavalidcds
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}