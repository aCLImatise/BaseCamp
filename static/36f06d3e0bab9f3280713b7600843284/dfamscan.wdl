version 1.0

task Dfamscan.pl {
  input {
    String dfDfAmInFile
    String dfDfAmOutfile
    Boolean maskingMaskingThresh
    Boolean annotationAnnotationThresh
    String speciesSpecies
    Boolean sortSortBySeq
    String minMinCovFrac
  }
  command <<<
    dfamscan.pl \
      ~{if defined(dfDfAmInFile) then ("--dfam_infile " +  '"' + dfDfAmInFile + '"') else ""} \
      ~{if defined(dfDfAmOutfile) then ("--dfam_outfile " +  '"' + dfDfAmOutfile + '"') else ""} \
      ~{true="--masking_thresh" false="" maskingMaskingThresh} \
      ~{true="--annotation_thresh" false="" annotationAnnotationThresh} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{true="--sortby_seq" false="" sortSortBySeq} \
      ~{if defined(minMinCovFrac) then ("--min_cov_frac " +  '"' + minMinCovFrac + '"') else ""}
  >>>
}