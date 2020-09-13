version 1.0

task Rsatretrieveseq {
  command <<<
    rsat_retrieve_seq
  >>>
  output {
    File out_stdout = stdout()
  }
}