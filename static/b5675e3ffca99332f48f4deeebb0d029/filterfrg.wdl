version 1.0

task Filterfrg {
  command <<<
    filterfrg
  >>>
  output {
    File out_stdout = stdout()
  }
}