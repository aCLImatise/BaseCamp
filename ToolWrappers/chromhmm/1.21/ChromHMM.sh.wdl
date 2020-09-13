version 1.0

task ChromHMMsh {
  command <<<
    ChromHMM_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}