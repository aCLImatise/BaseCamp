version 1.0

task MaskAlignedReadspy {
  command <<<
    maskAlignedReads_py
  >>>
  output {
    File out_stdout = stdout()
  }
}