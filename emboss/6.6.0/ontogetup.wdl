version 1.0

task Ontogetup {
  input {
    Boolean? obsolete
  }
  command <<<
    ontogetup \
      ~{if (obsolete) then "-obsolete" else ""}
  >>>
  parameter_meta {
    obsolete: "boolean    [N] The default behaviour is to not use or\\nreturn obsolete terms. This option if set\\nwill include all terms."
  }
  output {
    File out_stdout = stdout()
  }
}