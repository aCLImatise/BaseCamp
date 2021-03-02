version 1.0

task SNAPpl {
  command <<<
    SNAP_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}