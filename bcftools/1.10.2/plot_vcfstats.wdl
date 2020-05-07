version 1.0

task PlotVcfstats {
  input {
    Boolean mergeMerge
    String prefixPrefix
    Boolean noNoPdf
    Boolean rasterRasterIze
    Boolean sampleSampleNames
    String titleTitle
    String mainMainTitle
    Boolean vectorsVectors
    String? optionsOptions
    String? optionsOptions
  }
  command <<<
    plot-vcfstats \
      ~{optionsOptions} \
      ~{true="--merge" false="" mergeMerge} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--no-PDF" false="" noNoPdf} \
      ~{true="--rasterize" false="" rasterRasterIze} \
      ~{true="--sample-names" false="" sampleSampleNames} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(mainMainTitle) then ("--main-title " +  '"' + mainMainTitle + '"') else ""} \
      ~{true="--vectors" false="" vectorsVectors} \
      ~{optionsOptions}
  >>>
}