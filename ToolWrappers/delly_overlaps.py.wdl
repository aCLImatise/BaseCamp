version 1.0

task Dellyoverlapspy {
  command <<<
    delly_overlaps_py
  >>>
  output {
    File out_stdout = stdout()
  }
}