version 1.0

task Bed2region {
  command <<<
    bed2region
  >>>
  output {
    File out_stdout = stdout()
  }
}