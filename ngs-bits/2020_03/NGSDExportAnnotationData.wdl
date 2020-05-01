version 1.0

task NGSDExportAnnotationData {
  input {
    File variantsVariants
    File genesGenes
    File referenceReference
    Boolean testTest
    Float maxMaxAf
    Int geneGeneOffset
    String chrChr
    String modeMode
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDExportAnnotationData \
      ~{if defined(variantsVariants) then ("-variants " +  '"' + variantsVariants + '"') else ""} \
      ~{if defined(genesGenes) then ("-genes " +  '"' + genesGenes + '"') else ""} \
      ~{if defined(referenceReference) then ("-reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{if defined(maxMaxAf) then ("-maxAF " +  '"' + maxMaxAf + '"') else ""} \
      ~{if defined(geneGeneOffset) then ("-gene_offset " +  '"' + geneGeneOffset + '"') else ""} \
      ~{if defined(chrChr) then ("-chr " +  '"' + chrChr + '"') else ""} \
      ~{if defined(modeMode) then ("-mode " +  '"' + modeMode + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}