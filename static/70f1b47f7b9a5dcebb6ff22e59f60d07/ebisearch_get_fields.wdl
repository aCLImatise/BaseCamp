version 1.0

task EbisearchGetFields {
  input {
    String? domain
    Boolean? field_type
    File? file
  }
  command <<<
    ebisearch get_fields \
      ~{if defined(domain) then ("--domain " +  '"' + domain + '"') else ""} \
      ~{true="--field_type" false="" field_type} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    domain: "Domain id in EBI (accessible with get_domains)"
    field_type: "[searchable|retrievable|sortable|facet|topterms] Type fo field"
    file: "(Optional) File to export the domain information"
  }
}