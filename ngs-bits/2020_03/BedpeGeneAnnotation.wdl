version 1.0

task BedpeGeneAnnotation {
  input {
    File? in
    File? out
    Boolean? add_simple_gene_names
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedpeGeneAnnotation \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-add_simple_gene_names" false="" add_simple_gene_names} \
      ~{true="-test" false="" test} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input BEDPE file containing the SVs."
    out: "Output BEDPE file containing the annotated SVs."
    add_simple_gene_names: "Adds an additional column containing only the list of gene names. Default value: 'false'"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}