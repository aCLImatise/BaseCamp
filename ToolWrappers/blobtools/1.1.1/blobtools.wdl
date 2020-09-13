version 1.0

task Blobtools {
  command <<<
    blobtools
  >>>
  output {
    File out_stdout = stdout()
  }
}