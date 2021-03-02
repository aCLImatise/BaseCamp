version 1.0

task DataframeSumAllValuesr {
  command <<<
    dataframeSumAllValues_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}