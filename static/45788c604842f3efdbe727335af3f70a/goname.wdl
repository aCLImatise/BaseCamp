version 1.0

task Goname {
  input {
    Boolean? namespace
    Boolean? subclasses
    Boolean? obsolete
  }
  command <<<
    goname \
      ~{if (namespace) then "-namespace" else ""} \
      ~{if (subclasses) then "-subclasses" else ""} \
      ~{if (obsolete) then "-obsolete" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    namespace: "menu       [*] By default all terms are returned.\\nSearches can be limited to one or a few\\nnamespaces. (Values: biological_process\\n(Biological process); cellular_component\\n(Cellular component); molecular_function\\n(Molecular function))"
    subclasses: "boolean    [N] Extend the query matches to include all\\nterms which are specialisations (GO\\nsub-classes) of the matched type."
    obsolete: "boolean    [N] The default behaviour is to not use or\\nreturn obsolete terms. This option if set\\nwill include all terms."
  }
  output {
    File out_stdout = stdout()
  }
}