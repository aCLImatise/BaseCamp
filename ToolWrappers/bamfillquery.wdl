version 1.0

task Bamfillquery {
  command <<<
    bamfillquery
  >>>
  output {
    File out_stdout = stdout()
  }
}