version 1.0

task CompareGospy {
  command <<<
    compare_gos_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}