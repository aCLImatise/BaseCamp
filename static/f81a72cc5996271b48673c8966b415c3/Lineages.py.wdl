version 1.0

task Lineagespy {
  command <<<
    Lineages_py
  >>>
  output {
    File out_stdout = stdout()
  }
}