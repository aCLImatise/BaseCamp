version 1.0

task Bammarkduplicates {
  command <<<
    bammarkduplicates
  >>>
  output {
    File out_stdout = stdout()
  }
}