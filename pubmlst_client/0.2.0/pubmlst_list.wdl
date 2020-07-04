version 1.0

task PubmlstList {
  input {
    String? pattern
    String? exclude_pattern
    Boolean? names_only
    String? base_url
  }
  command <<<
    pubmlst_list \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(exclude_pattern) then ("--exclude_pattern " +  '"' + exclude_pattern + '"') else ""} \
      ~{true="--names_only" false="" names_only} \
      ~{if defined(base_url) then ("--base-url " +  '"' + base_url + '"') else ""}
  >>>
  parameter_meta {
    pattern: "regex pattern to filter scheme names"
    exclude_pattern: "regex pattern to filter scheme names"
    names_only: "Only show scheme names"
    base_url: "Base URL for the API. Suggested values are: http://rest.pubmlst.org/db (default), https://bigsdb.pasteur.fr/api/db"
  }
}