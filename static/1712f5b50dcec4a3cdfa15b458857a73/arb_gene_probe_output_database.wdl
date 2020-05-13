version 1.0

task ArbGeneProbeOutputDatabase {
  input {
    String? inputInputDatabase
    String? outputOutputDatabase
  }
  command <<<
    arb_gene_probe output_database \
      ~{inputInputDatabase} \
      ~{outputOutputDatabase}
  >>>
}