version 1.0

task Biodiff {
  command <<<
    biodiff
  >>>
  output {
    File out_stdout = stdout()
  }
}