version 1.0

task M9BBtopMsapl {
  command <<<
    m9B_btop_msa_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}