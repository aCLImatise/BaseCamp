version 1.0

task Sentieon {
  command <<<
    sentieon
  >>>
  output {
    File out_stdout = stdout()
  }
}