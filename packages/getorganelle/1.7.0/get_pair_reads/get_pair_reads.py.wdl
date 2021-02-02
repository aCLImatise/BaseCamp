version 1.0

task GetPairReadspy {
  command <<<
    get_pair_reads_py
  >>>
  output {
    File out_stdout = stdout()
  }
}