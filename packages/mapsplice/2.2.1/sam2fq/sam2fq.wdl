version 1.0

task Sam2fq {
  command <<<
    sam2fq
  >>>
  output {
    File out_stdout = stdout()
  }
}