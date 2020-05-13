version 1.0

task IgdiscoverHaplotype {
  input {
    String vVGene
    String dDEvalue
    String dDCoverage
    String restrictRestrict
    String orderOrder
    File plotPlot
    File structureStructurePlot
  }
  command <<<
    igdiscover haplotype \
      ~{if defined(vVGene) then ("--v-gene " +  '"' + vVGene + '"') else ""} \
      ~{if defined(dDEvalue) then ("--d-evalue " +  '"' + dDEvalue + '"') else ""} \
      ~{if defined(dDCoverage) then ("--d-coverage " +  '"' + dDCoverage + '"') else ""} \
      ~{if defined(restrictRestrict) then ("--restrict " +  '"' + restrictRestrict + '"') else ""} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{if defined(plotPlot) then ("--plot " +  '"' + plotPlot + '"') else ""} \
      ~{if defined(structureStructurePlot) then ("--structure-plot " +  '"' + structureStructurePlot + '"') else ""}
  >>>
}