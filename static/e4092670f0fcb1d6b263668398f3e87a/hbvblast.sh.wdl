version 1.0

task Hbvblastsh {
  command <<<
    hbvblast_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}