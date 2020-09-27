version 1.0

task MafTruncatepy {
  command <<<
    maf_truncate_py
  >>>
  output {
    File out_stdout = stdout()
  }
}