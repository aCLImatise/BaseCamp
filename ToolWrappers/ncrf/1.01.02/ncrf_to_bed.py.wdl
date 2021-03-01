version 1.0

task NcrfToBedpy {
  command <<<
    ncrf_to_bed_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}