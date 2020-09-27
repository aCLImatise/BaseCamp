version 1.0

task FastaMakeNbaseBedpl {
  command <<<
    fasta_make_Nbase_bed_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}