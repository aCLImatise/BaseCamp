version 1.0

task FixSwathWindowspy {
  command <<<
    fix_swath_windows_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}