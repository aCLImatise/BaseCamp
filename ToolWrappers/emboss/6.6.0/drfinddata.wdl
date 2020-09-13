version 1.0

task Drfinddata {
  input {
    Boolean? sensitive
    String name
  }
  command <<<
    drfinddata \
      ~{name} \
      ~{if (sensitive) then "-sensitive" else ""}
  >>>
  parameter_meta {
    sensitive: "boolean    [N] By default, the query keywords are\\nmatched against the EDAM term names (and\\nsynonyms) only. This option also matches the\\nkeywords against the EDAM term definitions\\nand will therefore (typically) report more\\nmatches."
    name: "Additional (Optional) qualifiers: (none)"
  }
  output {
    File out_stdout = stdout()
  }
}