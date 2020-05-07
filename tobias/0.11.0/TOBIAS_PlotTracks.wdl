version 1.0

task TOBIASPlotTracks {
  input {
    Boolean bigwigsBigwigs
    Boolean regionsRegions
    Boolean sitesSites
    Boolean highlightHighlight
    Boolean gtfGtf
    Boolean widthWidth
    Boolean colorsColors
    Boolean labelsLabels
    Boolean maxMaxTranscripts
    Boolean outdirOutdir
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS PlotTracks \
      ~{true="--bigwigs" false="" bigwigsBigwigs} \
      ~{true="--regions" false="" regionsRegions} \
      ~{true="--sites" false="" sitesSites} \
      ~{true="--highlight" false="" highlightHighlight} \
      ~{true="--gtf" false="" gtfGtf} \
      ~{true="--width" false="" widthWidth} \
      ~{true="--colors" false="" colorsColors} \
      ~{true="--labels" false="" labelsLabels} \
      ~{true="--max-transcripts" false="" maxMaxTranscripts} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}