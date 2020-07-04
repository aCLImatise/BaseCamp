version 1.0

task GetAnnoFasta.pl {
  input {
    String? seq_file
    Boolean? chop_cds
  }
  command <<<
    getAnnoFasta.pl \
      ~{if defined(seq_file) then ("--seqfile " +  '"' + seq_file + '"') else ""} \
      ~{true="--chop_cds" false="" chop_cds}
  >>>
  parameter_meta {
    seq_file: "Input a fasta file with the genomic sequences that AUGUSTUS was run on. When this option is given, an additional file with the individual coding exon sequences (augustus.cdsexons) is output. and a file with the complete mRNA including UTRs (augustus.mrna) is output."
    chop_cds: "for incomplete transcripts: cut off bases before first codon. This flag only takes effect if coding sequence is not included in the AUGUSTUS output."
  }
}