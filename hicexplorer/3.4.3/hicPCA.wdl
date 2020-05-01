version 1.0

task HicPCA {
  input {
    String matrixMatrix
    Array[String]+ outputOutputFileName
    String numberNumberOfEigenvectors
    String formatFormat
    Array[String]+ chromosomesChromosomes
    String methodMethod
    Boolean ligationLigationFactor
    String extraExtraTrack
    String histHistOnMarkType
    String pearsonPearsonMatrix
    String obsObsExpMatrix
    Boolean ignoreIgnoreMaskedBins
  }
  command <<<
    hicPCA \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outputOutputFileName) then ("--outputFileName " +  '"' + outputOutputFileName + '"') else ""} \
      ~{if defined(numberNumberOfEigenvectors) then ("--numberOfEigenvectors " +  '"' + numberNumberOfEigenvectors + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{true="--ligation_factor" false="" ligationLigationFactor} \
      ~{if defined(extraExtraTrack) then ("--extraTrack " +  '"' + extraExtraTrack + '"') else ""} \
      ~{if defined(histHistOnMarkType) then ("--histonMarkType " +  '"' + histHistOnMarkType + '"') else ""} \
      ~{if defined(pearsonPearsonMatrix) then ("--pearsonMatrix " +  '"' + pearsonPearsonMatrix + '"') else ""} \
      ~{if defined(obsObsExpMatrix) then ("--obsexpMatrix " +  '"' + obsObsExpMatrix + '"') else ""} \
      ~{true="--ignoreMaskedBins" false="" ignoreIgnoreMaskedBins}
  >>>
}