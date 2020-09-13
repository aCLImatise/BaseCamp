version 1.0

task SNPAnalysispl {
  input {
    File? gff
    String or
  }
  command <<<
    SNP_analysis_pl \
      ~{or} \
      ~{if defined(gff) then ("-gff " +  '"' + gff + '"') else ""}
  >>>
  parameter_meta {
    gff: "GFF is an alternative to genbank. Use either one."
    or: "-gff <gff3_without_sequence_file>   -fasta  <genome_fasta_file>"
  }
  output {
    File out_stdout = stdout()
  }
}