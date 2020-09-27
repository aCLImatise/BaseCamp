version 1.0

task Mdvalidater {
  command <<<
    mdvalidater
  >>>
  output {
    File out_stdout = stdout()
  }
}