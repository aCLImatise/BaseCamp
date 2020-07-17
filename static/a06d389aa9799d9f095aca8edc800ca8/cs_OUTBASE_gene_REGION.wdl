version 1.0

task CsOUTBASEGeneREGION.bed {
  input {
    String cs
  }
  command <<<
    cs OUTBASE_gene_REGION.bed \
      ~{cs}
  >>>
  parameter_meta {
    cs: ""
  }
}