version 1.0

task ProScrspy {
  command <<<
    ProScrs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}