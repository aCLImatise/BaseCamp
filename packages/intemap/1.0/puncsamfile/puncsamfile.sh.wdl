version 1.0

task Puncsamfilesh {
  command <<<
    puncsamfile_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}