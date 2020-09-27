version 1.0

task Modificationstsv {
  command <<<
    modifications_tsv
  >>>
  output {
    File out_stdout = stdout()
  }
}