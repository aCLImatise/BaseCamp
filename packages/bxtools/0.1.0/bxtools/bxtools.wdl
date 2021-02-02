version 1.0

task Bxtools {
  command <<<
    bxtools
  >>>
  output {
    File out_stdout = stdout()
  }
}