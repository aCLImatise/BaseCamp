version 1.0

task EbisearchGetEntries {
  input {
    String domainDomain
    String entryEntryId
    String fieldField
    Boolean fieldFieldUrl
    Boolean viewViewUrl
    File fileFile
  }
  command <<<
    ebisearch get_entries \
      ~{if defined(domainDomain) then ("--domain " +  '"' + domainDomain + '"') else ""} \
      ~{if defined(entryEntryId) then ("--entry_id " +  '"' + entryEntryId + '"') else ""} \
      ~{if defined(fieldField) then ("--field " +  '"' + fieldField + '"') else ""} \
      ~{true="--field_url" false="" fieldFieldUrl} \
      ~{true="--view_url" false="" viewViewUrl} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""}
  >>>
}