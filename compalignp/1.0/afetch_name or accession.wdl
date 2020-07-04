version 1.0

task AfetchName or accession {
  input {
    Boolean? options
    String a_fetch
    String alignment_database
    String name_or_accession
  }
  command <<<
    afetch name or accession \
      ~{a_fetch} \
      ~{alignment_database} \
      ~{name_or_accession} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    a_fetch: ""
    alignment_database: ""
    name_or_accession: ""
  }
}