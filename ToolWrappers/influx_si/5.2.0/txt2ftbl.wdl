version 1.0

task Txt2ftbl {
  command <<<
    txt2ftbl
  >>>
  output {
    File out_stdout = stdout()
  }
}