version 1.0

task Pandaseqhang {
  command <<<
    pandaseq_hang
  >>>
  output {
    File out_stdout = stdout()
  }
}