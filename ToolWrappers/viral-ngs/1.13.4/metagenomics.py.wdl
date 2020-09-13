version 1.0

task Metagenomicspy {
  command <<<
    metagenomics_py
  >>>
  output {
    File out_stdout = stdout()
  }
}