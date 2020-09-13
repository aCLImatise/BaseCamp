version 1.0

task RunJembosssh {
  command <<<
    runJemboss_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}