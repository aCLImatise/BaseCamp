version 1.0

task Sam2bamsh {
  command <<<
    sam2bam_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}