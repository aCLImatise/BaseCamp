version 1.0

task CnvGeneAnnotation {
  input {
    File? in
    File? out
    Boolean? add_simple_gene_names
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    CnvGeneAnnotation \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-add_simple_gene_names" false="" add_simple_gene_names} \
      ~{true="-test" false="" test} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input TSV file containing the CNVs."
    out: "Output TSV file containing the annotated CNVs."
    add_simple_gene_names: "Adds an additional column containing only the list of gene names. Default value: 'false'"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}