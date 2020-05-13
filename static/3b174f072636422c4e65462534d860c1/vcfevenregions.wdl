version 1.0

task Vcfevenregions {
  input {
    String fastFastAReference
    String numberNumberOfRegions
    String numberNumberOfPositions
    String offsetOffset
    String overlapOverlap
    String separatorSeparator
    String? vcfVcfFile
  }
  command <<<
    vcfevenregions \
      ~{vcfVcfFile} \
      ~{if defined(fastFastAReference) then ("--fasta-reference " +  '"' + fastFastAReference + '"') else ""} \
      ~{if defined(numberNumberOfRegions) then ("--number-of-regions " +  '"' + numberNumberOfRegions + '"') else ""} \
      ~{if defined(numberNumberOfPositions) then ("--number-of-positions " +  '"' + numberNumberOfPositions + '"') else ""} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""}
  >>>
}