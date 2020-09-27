version 1.0

task CreateGspy {
  command <<<
    create_gs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}