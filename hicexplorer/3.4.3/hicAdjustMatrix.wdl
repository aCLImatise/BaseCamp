version 1.0

task HicAdjustMatrix {
  input {
    Array[String]+ chromosomesChromosomes
    String regionsRegions
    String maskMaskBadRegions
    String matrixMatrix
    String outOutFilename
    String actionAction
  }
  command <<<
    hicAdjustMatrix \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(maskMaskBadRegions) then ("--maskBadRegions " +  '"' + maskMaskBadRegions + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(actionAction) then ("--action " +  '"' + actionAction + '"') else ""}
  >>>
}