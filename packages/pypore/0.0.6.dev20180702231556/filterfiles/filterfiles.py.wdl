version 1.0

task Filterfilespy {
  command <<<
    filterfiles_py
  >>>
  output {
    File out_stdout = stdout()
  }
}