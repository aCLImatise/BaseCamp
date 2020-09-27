version 1.0

task Fastachecksum {
  command <<<
    fastachecksum
  >>>
  output {
    File out_stdout = stdout()
  }
}