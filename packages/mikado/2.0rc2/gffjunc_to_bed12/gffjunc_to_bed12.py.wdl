version 1.0

task GffjuncToBed12py {
  command <<<
    gffjunc_to_bed12_py
  >>>
  output {
    File out_stdout = stdout()
  }
}