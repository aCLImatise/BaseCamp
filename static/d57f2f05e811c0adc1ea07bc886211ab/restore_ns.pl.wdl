version 1.0

task RestoreNspl {
  command <<<
    restore_ns_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}