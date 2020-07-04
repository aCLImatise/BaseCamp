version 1.0

task SNPAnalysis.pl {
  input {
    String? gff
  }
  command <<<
    SNP_analysis.pl \
      ~{if defined(gff) then ("-gff " +  '"' + gff + '"') else ""}
  >>>
  parameter_meta {
    gff: "-fasta  <genome_fasta_file>"
  }
}