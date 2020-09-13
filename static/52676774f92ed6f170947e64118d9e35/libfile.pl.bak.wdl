version 1.0

task Libfileplbak {
  command <<<
    libfile_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}