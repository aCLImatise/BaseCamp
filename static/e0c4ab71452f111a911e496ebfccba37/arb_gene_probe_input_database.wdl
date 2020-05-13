version 1.0

task ArbGeneProbeInputDatabase {
  input {
    String? outputOutputDatabase
  }
  command <<<
    arb_gene_probe input_database \
      ~{outputOutputDatabase}
  >>>
}