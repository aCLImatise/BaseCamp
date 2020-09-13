version 1.0

task Edamisformat {
  input {
    Boolean? namespace
    Boolean? sensitive
    Boolean? subclasses
    Boolean? obsolete
    String name
  }
  command <<<
    edamisformat \
      ~{name} \
      ~{if (namespace) then "-namespace" else ""} \
      ~{if (sensitive) then "-sensitive" else ""} \
      ~{if (subclasses) then "-subclasses" else ""} \
      ~{if (obsolete) then "-obsolete" else ""}
  >>>
  parameter_meta {
    namespace: "menu       [*] By default all terms are returned.\\nSearches can be limited to one or a few\\nnamespaces. (Values: data (Data entity);\\nentity (Biological entity); format (Data\\nformat); identifier (Identifier); operation\\n(Bioinformatics operation); resource (Data\\nresource); topic (Field of bioinformatics\\nstudy))"
    sensitive: "boolean    [N] By default, the query keywords are\\nmatched against the EDAM term names (and\\nsynonyms) only. This option also matches the\\nkeywords against the EDAM term definitions\\nand will therefore (typically) report more\\nmatches."
    subclasses: "boolean    [N] Extend the query matches to include all\\nterms which are specialisations (EDAM\\nsub-classes) of the matched type."
    obsolete: "boolean    [N] The default behaviour is to not use or\\nreturn obsolete terms. This option if set\\nwill include all terms."
    name: "Additional (Optional) qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}