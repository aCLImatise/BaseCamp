version 1.0

task CsOUTBASEGene.positions {
  input {
    String cs
  }
  command <<<
    cs OUTBASE_gene.positions \
      ~{cs}
  >>>
  parameter_meta {
    cs: ""
  }
}