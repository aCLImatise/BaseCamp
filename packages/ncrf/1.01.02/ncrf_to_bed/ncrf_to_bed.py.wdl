version 1.0

task NcrfToBedpy {
  command <<<
    ncrf_to_bed_py
  >>>
  output {
    File out_stdout = stdout()
  }
}