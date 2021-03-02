version 1.0

task Libfileplbak {
  command <<<
    libfile_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}