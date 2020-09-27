version 1.0

task Fastarevcomp {
  command <<<
    fastarevcomp
  >>>
  output {
    File out_stdout = stdout()
  }
}