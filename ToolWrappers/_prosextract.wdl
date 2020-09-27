version 1.0

task Prosextract {
  command <<<
    _prosextract
  >>>
  output {
    File out_stdout = stdout()
  }
}