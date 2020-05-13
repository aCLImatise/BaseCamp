version 1.0

task Triform2 {
  input {
    Array[String]+ treatmentTreatment
    Array[String]+ controlControl
    String numberNumberCores
    String genomeGenome
    String bedBedGraph
    Int maxMaxP
    Int minMinShift
    Int minMinWidth
    String readReadWidth
    String flankFlankDistance
    Int minMinEnrichment
  }
  command <<<
    triform2 \
      ~{if defined(treatmentTreatment) then ("--treatment " +  '"' + treatmentTreatment + '"') else ""} \
      ~{if defined(controlControl) then ("--control " +  '"' + controlControl + '"') else ""} \
      ~{if defined(numberNumberCores) then ("--number-cores " +  '"' + numberNumberCores + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(bedBedGraph) then ("--bedgraph " +  '"' + bedBedGraph + '"') else ""} \
      ~{if defined(maxMaxP) then ("--max-p " +  '"' + maxMaxP + '"') else ""} \
      ~{if defined(minMinShift) then ("--min-shift " +  '"' + minMinShift + '"') else ""} \
      ~{if defined(minMinWidth) then ("--min-width " +  '"' + minMinWidth + '"') else ""} \
      ~{if defined(readReadWidth) then ("--read-width " +  '"' + readReadWidth + '"') else ""} \
      ~{if defined(flankFlankDistance) then ("--flank-distance " +  '"' + flankFlankDistance + '"') else ""} \
      ~{if defined(minMinEnrichment) then ("--min-enrichment " +  '"' + minMinEnrichment + '"') else ""}
  >>>
}