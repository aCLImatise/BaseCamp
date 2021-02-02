version 1.0

task AnviscriptFASTAtocontigsdb {
  command <<<
    anvi_script_FASTA_to_contigs_db
  >>>
  output {
    File out_stdout = stdout()
  }
}