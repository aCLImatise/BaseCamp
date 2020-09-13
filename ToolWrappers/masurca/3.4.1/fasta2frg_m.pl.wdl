version 1.0

task Fasta2frgMpl {
  command <<<
    fasta2frg_m_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}