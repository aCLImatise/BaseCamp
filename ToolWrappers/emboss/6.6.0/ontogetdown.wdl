version 1.0

task Ontogetdown {
  input {
    Boolean? obsolete
    String name
  }
  command <<<
    ontogetdown \
      ~{name} \
      ~{if (obsolete) then "-obsolete" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    obsolete: "boolean    [N] The default behaviour is to not use or\\nreturn obsolete terms. This option if set\\nwill include all terms."
    name: "Additional (Optional) qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}