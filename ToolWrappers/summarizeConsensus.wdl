version 1.0

task SummarizeConsensus {
  input {
    String? variants_gff
  }
  command <<<
    summarizeConsensus \
      ~{if defined(variants_gff) then ("--variantsGff " +  '"' + variants_gff + '"') else ""}
  >>>
  parameter_meta {
    variants_gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}