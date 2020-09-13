version 1.0

task Basqcol {
  command <<<
    basqcol
  >>>
  output {
    File out_stdout = stdout()
  }
}