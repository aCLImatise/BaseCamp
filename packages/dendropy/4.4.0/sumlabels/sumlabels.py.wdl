version 1.0

task Sumlabelspy {
  command <<<
    sumlabels_py
  >>>
  output {
    File out_stdout = stdout()
  }
}