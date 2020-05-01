version 1.0

task GenomedataHistogram {
  input {
    File includeIncludeCoords
    String numNumBins
    String? gdGdArchive
    String? trackTrackName
  }
  command <<<
    genomedata-histogram \
      ~{gdGdArchive} \
      ~{if defined(includeIncludeCoords) then ("--include-coords " +  '"' + includeIncludeCoords + '"') else ""} \
      ~{if defined(numNumBins) then ("--num-bins " +  '"' + numNumBins + '"') else ""} \
      ~{trackTrackName}
  >>>
}