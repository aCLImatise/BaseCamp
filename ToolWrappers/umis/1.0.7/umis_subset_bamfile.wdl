version 1.0

task UmisSubsetBamfile {
  command <<<
    umis subset_bamfile
  >>>
  output {
    File out_stdout = stdout()
  }
}