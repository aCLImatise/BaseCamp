version 1.0

task RsatSupportedorganismsensemblgenomes {
  input {
    String? i_find_them
    String supported_organisms_ensembl_genomes
    String expressions_dot
    String util
    String attribute_dot
  }
  command <<<
    rsat supported_organisms_ensemblgenomes \
      ~{supported_organisms_ensembl_genomes} \
      ~{expressions_dot} \
      ~{util} \
      ~{attribute_dot} \
      ~{if defined(i_find_them) then ("-q " +  '"' + i_find_them + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i_find_them: "(I did not find them yet)"
    supported_organisms_ensembl_genomes: "[1mVERSION[0m"
    expressions_dot: "[1mspecies_taxid[0m"
    util: "[1mUSAGE[0m"
    attribute_dot: "[1mSEE ALSO[0m"
  }
  output {
    File out_stdout = stdout()
  }
}