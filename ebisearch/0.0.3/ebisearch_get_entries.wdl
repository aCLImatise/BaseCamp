version 1.0

task EbisearchGetEntries {
  input {
    String? domain
    String? entry_id
    String? field
    Boolean? field_url
    Boolean? view_url
    File? file
  }
  command <<<
    ebisearch get_entries \
      ~{if defined(domain) then ("--domain " +  '"' + domain + '"') else ""} \
      ~{if defined(entry_id) then ("--entry_id " +  '"' + entry_id + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{true="--field_url" false="" field_url} \
      ~{true="--view_url" false="" view_url} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    domain: "Domain id in EBI (accessible with get_domains)"
    entry_id: "(Multiple) Entry identifier to retrieve"
    field: "(Multiple) Field to export (accessible with get_fields with retrieva    ble as type"
    field_url: "Include the field links"
    view_url: "Include other view links"
    file: "(Optional) File to export the entry content"
  }
}