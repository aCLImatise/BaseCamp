version 1.0

task TMalign {
  command <<<
    TMalign
  >>>
  output {
    File out_stdout = stdout()
  }
}