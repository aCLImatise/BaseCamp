version 1.0

task CleanFasta.py {
  input {
    String fastFastASeqs
  }
  command <<<
    clean_fasta.py \
      ~{if defined(fastFastASeqs) then ("--fasta_seqs " +  '"' + fastFastASeqs + '"') else ""}
  >>>
}