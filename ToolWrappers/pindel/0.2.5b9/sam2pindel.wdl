version 1.0

task Sam2pindel {
  command <<<
    sam2pindel
  >>>
  output {
    File out_stdout = stdout()
  }
}