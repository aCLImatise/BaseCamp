version 1.0

task AnalyzePrimers.py {
  input {
    String fastFastASeqs
  }
  command <<<
    analyze_primers.py \
      ~{if defined(fastFastASeqs) then ("--fasta_seqs " +  '"' + fastFastASeqs + '"') else ""}
  >>>
}