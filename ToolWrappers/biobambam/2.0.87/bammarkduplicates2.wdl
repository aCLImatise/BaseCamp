version 1.0

task Bammarkduplicates2 {
  command <<<
    bammarkduplicates2
  >>>
  output {
    File out_stdout = stdout()
  }
}