version 1.0

task Prosextract {
  command <<<
    prosextract
  >>>
  output {
    File out_stdout = stdout()
  }
}