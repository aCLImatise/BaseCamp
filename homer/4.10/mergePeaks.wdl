version 1.0

task MergePeaks {
  input {
    Boolean strandStrand
    Boolean dD
    File fileFile
    Boolean gGSize
    File vennVenn
    Boolean codeCode
    File matrixMatrix
    String filterFilter
    String coverageCoverage
  }
  command <<<
    mergePeaks \
      ~{true="-strand" false="" strandStrand} \
      ~{true="-d" false="" dD} \
      ~{if defined(fileFile) then ("-file " +  '"' + fileFile + '"') else ""} \
      ~{true="-gsize" false="" gGSize} \
      ~{if defined(vennVenn) then ("-venn " +  '"' + vennVenn + '"') else ""} \
      ~{true="-code" false="" codeCode} \
      ~{if defined(matrixMatrix) then ("-matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(filterFilter) then ("-filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(coverageCoverage) then ("-coverage " +  '"' + coverageCoverage + '"') else ""}
  >>>
}