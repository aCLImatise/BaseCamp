version 1.0

task GenePredHisto {
  input {
    String idsIds
    String? whatWhat
    String? geneGenePredFile
    String? histoHistoOut
  }
  command <<<
    genePredHisto \
      ~{whatWhat} \
      ~{if defined(idsIds) then ("-ids " +  '"' + idsIds + '"') else ""} \
      ~{geneGenePredFile} \
      ~{histoHistoOut}
  >>>
}