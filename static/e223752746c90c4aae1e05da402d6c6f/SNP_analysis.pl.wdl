version 1.0

task SNPAnalysispl {
  input {
    File? gff
  }
  command <<<
    SNP_analysis_pl \
      ~{if defined(gff) then ("-gff " +  '"' + gff + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff: "GFF is an alternative to genbank. Use either one."
  }
  output {
    File out_stdout = stdout()
  }
}