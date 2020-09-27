version 1.0

task FixSwathWindowspy {
  command <<<
    fix_swath_windows_py
  >>>
  output {
    File out_stdout = stdout()
  }
}