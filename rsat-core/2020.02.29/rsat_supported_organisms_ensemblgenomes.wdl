version 1.0

task RsatSupportedorganismsensemblgenomes {
  input {
    String supported_organisms_ensembl_genomes
    String expressions_dot
    String jacques_dot_van_helden_backslash_at_univ_am_udot_fr
    String util
    String attribute_dot
  }
  command <<<
    rsat supported_organisms_ensemblgenomes \
      ~{supported_organisms_ensembl_genomes} \
      ~{expressions_dot} \
      ~{jacques_dot_van_helden_backslash_at_univ_am_udot_fr} \
      ~{util} \
      ~{attribute_dot}
  >>>
  parameter_meta {
    supported_organisms_ensembl_genomes: "[1mVERSION[0m"
    expressions_dot: "[1mspecies_taxid[0m"
    jacques_dot_van_helden_backslash_at_univ_am_udot_fr: "[1mCATEGORY[0m"
    util: "[1mUSAGE[0m"
    attribute_dot: "[1mSEE ALSO[0m"
  }
  output {
    File out_stdout = stdout()
  }
}