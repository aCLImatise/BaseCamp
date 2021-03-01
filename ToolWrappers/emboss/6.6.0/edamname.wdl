version 1.0

task Edamname {
  input {
    Boolean? namespace
    Boolean? subclasses
    Boolean? obsolete
  }
  command <<<
    edamname \
      ~{if (namespace) then "-namespace" else ""} \
      ~{if (subclasses) then "-subclasses" else ""} \
      ~{if (obsolete) then "-obsolete" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    namespace: "menu       [*] By default all terms are returned.\\nSearches can be limited to one or a few\\nnamespaces. (Values: data (Data entity);\\nentity (Biological entity); format (Data\\nformat); identifier (Identifier); operation\\n(Bioinformatics operation); resource (Data\\nresource); topic (Field of bioinformatics\\nstudy))"
    subclasses: "boolean    [N] Extend the query matches to include all\\nterms which are specialisations (EDAM\\nsub-classes) of the matched type."
    obsolete: "boolean    [N] The default behaviour is to not use or\\nreturn obsolete terms. This option if set\\nwill include all terms."
  }
  output {
    File out_stdout = stdout()
  }
}