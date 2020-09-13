version 1.0

task Nucfreqsfasta {
  command <<<
    nucfreqsfasta
  >>>
  output {
    File out_stdout = stdout()
  }
}