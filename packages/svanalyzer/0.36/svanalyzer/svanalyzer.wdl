version 1.0

task Svanalyzer {
  command <<<
    svanalyzer
  >>>
  output {
    File out_stdout = stdout()
  }
}