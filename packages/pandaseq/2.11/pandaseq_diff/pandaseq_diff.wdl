version 1.0

task Pandaseqdiff {
  command <<<
    pandaseq_diff
  >>>
  output {
    File out_stdout = stdout()
  }
}