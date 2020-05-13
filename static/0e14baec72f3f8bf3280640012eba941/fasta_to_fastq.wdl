version 1.0

task FastaToFastq {
  input {
    String qvQv
  }
  command <<<
    fasta_to_fastq \
      ~{if defined(qvQv) then ("-qv " +  '"' + qvQv + '"') else ""}
  >>>
}