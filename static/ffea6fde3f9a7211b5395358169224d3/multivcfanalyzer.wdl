version 1.0

task Multivcfanalyzer {
  command <<<
    multivcfanalyzer
  >>>
  output {
    File out_stdout = stdout()
  }
}