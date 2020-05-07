version 1.0

task EbisearchGetFields {
  input {
    String domainDomain
    Boolean fieldFieldType
    File fileFile
  }
  command <<<
    ebisearch get_fields \
      ~{if defined(domainDomain) then ("--domain " +  '"' + domainDomain + '"') else ""} \
      ~{true="--field_type" false="" fieldFieldType} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""}
  >>>
}