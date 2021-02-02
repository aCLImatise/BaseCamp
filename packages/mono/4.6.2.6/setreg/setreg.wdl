version 1.0

task Setreg {
  command <<<
    setreg
  >>>
  output {
    File out_stdout = stdout()
  }
}