version 1.0

task Bamrecompress {
  command <<<
    bamrecompress
  >>>
  output {
    File out_stdout = stdout()
  }
}