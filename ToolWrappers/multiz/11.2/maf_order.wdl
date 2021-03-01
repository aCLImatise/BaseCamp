version 1.0

task MafOrder {
  command <<<
    maf_order
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}