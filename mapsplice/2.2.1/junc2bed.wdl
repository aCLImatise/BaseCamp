version 1.0

task Junc2bed {
  command <<<
    junc2bed
  >>>
  output {
    File out_stdout = stdout()
  }
}