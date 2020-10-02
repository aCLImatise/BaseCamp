version 1.0

task MashInfo {
  command <<<
    mash info
  >>>
  output {
    File out_stdout = stdout()
  }
}