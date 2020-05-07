version 1.0

task SNPAnalysis.pl {
  input {
    String gffGff
  }
  command <<<
    SNP_analysis.pl \
      ~{if defined(gffGff) then ("-gff " +  '"' + gffGff + '"') else ""}
  >>>
}