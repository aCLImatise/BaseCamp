version 1.0

task Ontocount {
  input {
    Boolean? subclasses
    Boolean? obsolete
  }
  command <<<
    ontocount \
      ~{if (subclasses) then "-subclasses" else ""} \
      ~{if (obsolete) then "-obsolete" else ""}
  >>>
  parameter_meta {
    subclasses: "boolean    [N] Extend the query matches to include all\\nterms which are specialisations\\n(sub-classes) of the matched terms."
    obsolete: "boolean    [N] The default behaviour is to not use or\\nreturn obsolete terms. This option if set\\nwill include all terms."
  }
  output {
    File out_stdout = stdout()
  }
}