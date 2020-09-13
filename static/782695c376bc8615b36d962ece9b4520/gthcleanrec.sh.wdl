version 1.0

task Gthcleanrecsh {
  command <<<
    gthcleanrec_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}