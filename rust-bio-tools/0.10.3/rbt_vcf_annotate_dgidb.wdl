version 1.0

task RbtVcfannotatedgidb {
  input {
    File? api_path
    String? field
    Int? genes_per_request
  }
  command <<<
    rbt vcf_annotate_dgidb \
      ~{if defined(api_path) then ("--api-path " +  '"' + api_path + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if defined(genes_per_request) then ("--genes-per-request " +  '"' + genes_per_request + '"') else ""}
  >>>
  parameter_meta {
    api_path: "url prefix for requesting interaction drugs by gene names. [default:\\nhttp://dgidb.org/api/v2/interactions.json?genes=]"
    field: "Info field name to be used for annotation. [default: dgiDB_drugs]"
    genes_per_request: "Number of genes to submit per api request. A lower value increases the number of api requests in return.\\nToo many requests could be rejected by the DGIdb server.\\n[default: 500]"
  }
  output {
    File out_stdout = stdout()
  }
}