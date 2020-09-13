version 1.0

task EbisearchGetFields {
  input {
    String? domain
    Boolean? field_type
    File? file
    String information
  }
  command <<<
    ebisearch get_fields \
      ~{information} \
      ~{if defined(domain) then ("--domain " +  '"' + domain + '"') else ""} \
      ~{if (field_type) then "--field_type" else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    domain: "Domain id in EBI (accessible with\\nget_domains)"
    field_type: "[searchable|retrievable|sortable|facet|topterms]\\nType fo field"
    file: "(Optional) File to export the domain"
    information: "--help                          Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}