version 1.0

task MafTruncatepy {
  command <<<
    maf_truncate_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}