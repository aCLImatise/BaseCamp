version 1.0

task SNAPpl {
  command <<<
    SNAP_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}