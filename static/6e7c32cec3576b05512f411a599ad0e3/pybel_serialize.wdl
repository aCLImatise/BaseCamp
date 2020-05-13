version 1.0

task PybelSerialize {
  input {
    File csvCsv
    File sSIf
    File gGSea
    String graphGraphMl
    File jsonJson
    File belBel
  }
  command <<<
    pybel serialize \
      ~{if defined(csvCsv) then ("--csv " +  '"' + csvCsv + '"') else ""} \
      ~{if defined(sSIf) then ("--sif " +  '"' + sSIf + '"') else ""} \
      ~{if defined(gGSea) then ("--gsea " +  '"' + gGSea + '"') else ""} \
      ~{if defined(graphGraphMl) then ("--graphml " +  '"' + graphGraphMl + '"') else ""} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""} \
      ~{if defined(belBel) then ("--bel " +  '"' + belBel + '"') else ""}
  >>>
}