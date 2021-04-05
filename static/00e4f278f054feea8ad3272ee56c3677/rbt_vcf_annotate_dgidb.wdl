version 1.0

task RbtVcfannotatedgidb {
  input {
    File? api_path
    Int? data_sources
    String? field
    Int? genes_per_request
  }
  command <<<
    rbt vcf_annotate_dgidb \
      ~{if defined(api_path) then ("--api-path " +  '"' + api_path + '"') else ""} \
      ~{if defined(data_sources) then ("--datasources " +  '"' + data_sources + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if defined(genes_per_request) then ("--genes-per-request " +  '"' + genes_per_request + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.2--heda7bfa_0"
  }
  parameter_meta {
    api_path: "Url prefix for requesting interaction drugs by gene names [default:\\nhttp://dgidb.org/api/v2/interactions.json?genes=]"
    data_sources: "...\\nA list of data sources included in query. If omitted all sources are considered. A list of all sources can\\nbe found at http://dgidb.org/api/v2/interaction_sources.json"
    field: "Info field name to be used for annotation [default: dgiDB_drugs]"
    genes_per_request: "Number of genes to submit per api request. A lower value increases the number of api requests in return. Too\\nmany requests could be rejected by the DGIdb server [default: 500]"
  }
  output {
    File out_stdout = stdout()
  }
}