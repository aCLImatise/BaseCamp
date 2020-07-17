version 1.0

task Epost {
  input {
    Boolean? db
    Boolean? id
    Boolean? format
    Boolean? read_file_instead
    Boolean? label
  }
  command <<<
    epost \
      ~{true="-db" false="" db} \
      ~{true="-id" false="" id} \
      ~{true="-format" false="" format} \
      ~{true="-input" false="" read_file_instead} \
      ~{true="-label" false="" label}
  >>>
  parameter_meta {
    db: "Database name"
    id: "Unique identifier(s) or accession number(s)"
    format: "uid or acc"
    read_file_instead: "Read from file instead of stdin"
    label: "Alias for query step"
  }
}