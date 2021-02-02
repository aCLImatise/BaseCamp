version 1.0

task Findbpall {
  command <<<
    findbp_all
  >>>
  output {
    File out_stdout = stdout()
  }
}