version 1.0

task CompareGospy {
  command <<<
    compare_gos_py
  >>>
  output {
    File out_stdout = stdout()
  }
}