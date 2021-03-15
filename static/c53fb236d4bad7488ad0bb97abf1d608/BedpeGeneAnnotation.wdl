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
      ~{if (add_simple_gene_names) then "-add_simple_gene_names" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input BEDPE file containing the SVs."
    out: "Output BEDPE file containing the annotated SVs."
    add_simple_gene_names: "Adds an additional column containing only the list of gene names.\\nDefault value: 'false'"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}