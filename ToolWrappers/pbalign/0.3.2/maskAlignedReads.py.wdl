version 1.0

task MaskAlignedReadspy {
  command <<<
    maskAlignedReads_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}