version 1.0

task Bamtools241 {
  command <<<
    bamtools_2_4_1
  >>>
  output {
    File out_stdout = stdout()
  }
}