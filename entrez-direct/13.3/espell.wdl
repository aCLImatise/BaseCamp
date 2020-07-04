version 1.0

task Espell {
  input {
    Boolean? db
    Boolean? query
  }
  command <<<
    espell \
      ~{true="-db" false="" db} \
      ~{true="-query" false="" query}
  >>>
  parameter_meta {
    db: "Database name"
    query: "Query string"
  }
}