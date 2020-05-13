version 1.0

task HifiveHicInterval {
  input {
    String chromosomeChromosome
    String chromosomeChromosome2
    String startStart
    String stopStop
    String startStart2
    String stop2Stop2
    String binsizeBinsize
    Int maxMaxDistance
    String dataDataType
    Boolean matrixMatrix
    Boolean dynamicallyDynamicallyBin
    String expansionExpansionBinsize
    Int minMinObservations
    String searchSearchDistance
    Boolean removeRemoveFailed
    String imageImageFile
    Boolean pdfPdf
    Boolean rotateRotate
    Boolean ticksTicks
    Boolean legendLegend
    String keywordKeyword
    Boolean quietQuiet
    String? projectProject
    String? outputOutput
  }
  command <<<
    hifive hic-interval \
      ~{projectProject} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""} \
      ~{if defined(chromosomeChromosome2) then ("--chromosome2 " +  '"' + chromosomeChromosome2 + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(startStart2) then ("--start2 " +  '"' + startStart2 + '"') else ""} \
      ~{if defined(stop2Stop2) then ("--stop2 " +  '"' + stop2Stop2 + '"') else ""} \
      ~{if defined(binsizeBinsize) then ("--binsize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(maxMaxDistance) then ("--max-distance " +  '"' + maxMaxDistance + '"') else ""} \
      ~{if defined(dataDataType) then ("--data-type " +  '"' + dataDataType + '"') else ""} \
      ~{true="--matrix" false="" matrixMatrix} \
      ~{true="--dynamically-bin" false="" dynamicallyDynamicallyBin} \
      ~{if defined(expansionExpansionBinsize) then ("--expansion-binsize " +  '"' + expansionExpansionBinsize + '"') else ""} \
      ~{if defined(minMinObservations) then ("--minobservations " +  '"' + minMinObservations + '"') else ""} \
      ~{if defined(searchSearchDistance) then ("--search-distance " +  '"' + searchSearchDistance + '"') else ""} \
      ~{true="--remove-failed" false="" removeRemoveFailed} \
      ~{if defined(imageImageFile) then ("--image-file " +  '"' + imageImageFile + '"') else ""} \
      ~{true="--pdf" false="" pdfPdf} \
      ~{true="--rotate" false="" rotateRotate} \
      ~{true="--ticks" false="" ticksTicks} \
      ~{true="--legend" false="" legendLegend} \
      ~{if defined(keywordKeyword) then ("--keyword " +  '"' + keywordKeyword + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{outputOutput}
  >>>
}