version 1.0

task Snapaligner {
  command <<<
    snap_aligner
  >>>
  output {
    File out_stdout = stdout()
  }
}