version 1.0

task HifiveHicHeatmap {
  input {
    Boolean transTrans
    String chromosomesChromosomes
    Int minMinObservations
    String binsizeBinsize
    String datatypeDatatype
    String formatFormat
    Boolean dynamicallyDynamicallyBin
    String expansionExpansionBinsize
    String searchSearchDistance
    Boolean removeRemoveFailed
    String imageImageFile
    Boolean pdfPdf
    Boolean legendLegend
    Boolean namesNames
    String keywordKeyword
    Boolean quietQuiet
    String? projectProject
    String? outputOutput
  }
  command <<<
    hifive hic-heatmap \
      ~{projectProject} \
      ~{true="--trans" false="" transTrans} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(minMinObservations) then ("--minobservations " +  '"' + minMinObservations + '"') else ""} \
      ~{if defined(binsizeBinsize) then ("--binsize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(datatypeDatatype) then ("--datatype " +  '"' + datatypeDatatype + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--dynamically-bin" false="" dynamicallyDynamicallyBin} \
      ~{if defined(expansionExpansionBinsize) then ("--expansion-binsize " +  '"' + expansionExpansionBinsize + '"') else ""} \
      ~{if defined(searchSearchDistance) then ("--search-distance " +  '"' + searchSearchDistance + '"') else ""} \
      ~{true="--remove-failed" false="" removeRemoveFailed} \
      ~{if defined(imageImageFile) then ("--image-file " +  '"' + imageImageFile + '"') else ""} \
      ~{true="--pdf" false="" pdfPdf} \
      ~{true="--legend" false="" legendLegend} \
      ~{true="--names" false="" namesNames} \
      ~{if defined(keywordKeyword) then ("--keyword " +  '"' + keywordKeyword + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{outputOutput}
  >>>
}