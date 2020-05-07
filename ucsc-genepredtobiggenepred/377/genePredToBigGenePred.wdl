version 1.0

task GenePredToBigGenePred {
  input {
    Boolean knownKnown
    String scoreScore
    String geneGeneNames
    String colorsColors
    String cdsCds
  }
  command <<<
    genePredToBigGenePred \
      ~{true="-known" false="" knownKnown} \
      ~{if defined(scoreScore) then ("-score " +  '"' + scoreScore + '"') else ""} \
      ~{if defined(geneGeneNames) then ("-geneNames " +  '"' + geneGeneNames + '"') else ""} \
      ~{if defined(colorsColors) then ("-colors " +  '"' + colorsColors + '"') else ""} \
      ~{if defined(cdsCds) then ("-cds " +  '"' + cdsCds + '"') else ""}
  >>>
}