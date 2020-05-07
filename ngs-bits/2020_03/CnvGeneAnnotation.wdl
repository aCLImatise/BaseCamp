version 1.0

task CnvGeneAnnotation {
  input {
    File inIn
    File outOut
    Boolean addAddSimpleGeneNames
    Boolean testTest
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    CnvGeneAnnotation \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-add_simple_gene_names" false="" addAddSimpleGeneNames} \
      ~{true="-test" false="" testTest} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}