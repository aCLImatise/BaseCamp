version 1.0

task AfetchAlignmentdatabase {
  input {
    Boolean? options
    String name_or_accession
  }
  command <<<
    afetch alignment_database \
      ~{name_or_accession} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    name_or_accession: ""
  }
  output {
    File out_stdout = stdout()
  }
}