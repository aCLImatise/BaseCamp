version 1.0

task AfetchAlignment database {
  input {
    Boolean? options
    String name_or_accession
  }
  command <<<
    afetch alignment database \
      ~{name_or_accession} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    name_or_accession: ""
  }
}