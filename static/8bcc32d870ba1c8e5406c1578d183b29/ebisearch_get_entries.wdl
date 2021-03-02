version 1.0

task EbisearchGetEntries {
  input {
    String? domain
    String? entry_id
    String? field
    Boolean? field_url
    Boolean? view_url
    File? optional_file_export
    String re_tri_eva
  }
  command <<<
    ebisearch get_entries \
      ~{re_tri_eva} \
      ~{if defined(domain) then ("--domain " +  '"' + domain + '"') else ""} \
      ~{if defined(entry_id) then ("--entry_id " +  '"' + entry_id + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if (field_url) then "--field_url" else ""} \
      ~{if (view_url) then "--view_url" else ""} \
      ~{if defined(optional_file_export) then ("--file " +  '"' + optional_file_export + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    domain: "Domain id in EBI (accessible with get_domains)"
    entry_id: "(Multiple) Entry identifier to retrieve"
    field: "(Multiple) Field to export (accessible with get_fields with"
    field_url: "Include the field links"
    view_url: "Include other view links"
    optional_file_export: "(Optional) File to export the entry content"
    re_tri_eva: "ble as type"
  }
  output {
    File out_stdout = stdout()
  }
}