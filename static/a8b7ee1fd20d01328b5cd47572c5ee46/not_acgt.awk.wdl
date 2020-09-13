version 1.0

task Notacgtawk {
  command <<<
    not_acgt_awk
  >>>
  output {
    File out_stdout = stdout()
  }
}