version 1.0

task RbtVcfAnnotateDgidb {
  input {
    String? api_path
    String? field
    String? genes_per_request
    String vcf
  }
  command <<<
    rbt vcf-annotate-dgidb \
      ~{vcf} \
      ~{if defined(api_path) then ("--api-path " +  '"' + api_path + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if defined(genes_per_request) then ("--genes-per-request " +  '"' + genes_per_request + '"') else ""}
  >>>
  parameter_meta {
    api_path: "url prefix for requesting interaction drugs by gene names. [default: http://dgidb.org/api/v2/interactions.json?genes=]"
    field: "Info field name to be used for annotation. [default: dgiDB_drugs]"
    genes_per_request: "Number of genes to submit per api request. A lower value increases the number of api requests in return.  Too many requests could be rejected by the DGIdb server. [default: 500]"
    vcf: ""
  }
}