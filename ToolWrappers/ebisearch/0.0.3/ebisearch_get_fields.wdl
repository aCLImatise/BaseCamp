version 1.0

task EbisearchGetFields {
  input {
    String? domain
    Boolean? field_type
    File? optional_file_export
    String information
  }
  command <<<
    ebisearch get_fields \
      ~{information} \
      ~{if defined(domain) then ("--domain " +  '"' + domain + '"') else ""} \
      ~{if (field_type) then "--field_type" else ""} \
      ~{if defined(optional_file_export) then ("--file " +  '"' + optional_file_export + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    domain: "Domain id in EBI (accessible with\\nget_domains)"
    field_type: "[searchable|retrievable|sortable|facet|topterms]\\nType fo field"
    optional_file_export: "(Optional) File to export the domain"
    information: "--help                          Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}