version 1.0

task M8BtopMsapl {
  command <<<
    m8_btop_msa_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}