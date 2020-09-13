version 1.0

task AfetchNameoraccession {
  input {
    Boolean? options
    String a_fetch
    String alignment_database
    String name_or_accession
  }
  command <<<
    afetch name_or_accession \
      ~{a_fetch} \
      ~{alignment_database} \
      ~{name_or_accession} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    a_fetch: ""
    alignment_database: ""
    name_or_accession: ""
  }
  output {
    File out_stdout = stdout()
  }
}