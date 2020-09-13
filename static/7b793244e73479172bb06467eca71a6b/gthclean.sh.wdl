version 1.0

task Gthcleansh {
  command <<<
    gthclean_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}