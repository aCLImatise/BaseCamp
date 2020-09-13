version 1.0

task FindMateSamFq {
  command <<<
    find_mate_sam_fq
  >>>
  output {
    File out_stdout = stdout()
  }
}