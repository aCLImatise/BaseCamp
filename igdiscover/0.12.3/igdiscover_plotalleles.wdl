version 1.0

task IgdiscoverPlotalleles {
  input {
    String dDEvalue
    String dDCoverage
    String databaseDatabase
    String orderOrder
    String xX
    String geneGene
    String? allelesAlleles
    String? tableTable
    String? plotPlot
  }
  command <<<
    igdiscover plotalleles \
      ~{allelesAlleles} \
      ~{if defined(dDEvalue) then ("--d-evalue " +  '"' + dDEvalue + '"') else ""} \
      ~{if defined(dDCoverage) then ("--d-coverage " +  '"' + dDCoverage + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{if defined(xX) then ("--x " +  '"' + xX + '"') else ""} \
      ~{if defined(geneGene) then ("--gene " +  '"' + geneGene + '"') else ""} \
      ~{tableTable} \
      ~{plotPlot}
  >>>
}