version 1.0

task BigWigCat {
  command <<<
    bigWigCat
  >>>
  output {
    File out_stdout = stdout()
  }
}