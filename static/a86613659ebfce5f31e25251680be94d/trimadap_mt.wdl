version 1.0

task Trimadapmt {
  command <<<
    trimadap_mt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}