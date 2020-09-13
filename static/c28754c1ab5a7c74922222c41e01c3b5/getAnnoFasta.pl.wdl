version 1.0

task GetAnnoFastapl {
  input {
    File? seq_file
    Boolean? chop_cds
  }
  command <<<
    getAnnoFasta_pl \
      ~{if defined(seq_file) then ("--seqfile " +  '"' + seq_file + '"') else ""} \
      ~{if (chop_cds) then "--chop_cds" else ""}
  >>>
  parameter_meta {
    seq_file: "Input a fasta file with the genomic sequences that AUGUSTUS was run on.\\nWhen this option is given, an additional file with the individual\\ncoding exon sequences (augustus.cdsexons) is output.\\nand a file with the complete mRNA including UTRs (augustus.mrna) is output."
    chop_cds: "for incomplete transcripts: cut off bases before first codon.\\nThis flag only takes effect if coding sequence is not included in the\\nAUGUSTUS output.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}