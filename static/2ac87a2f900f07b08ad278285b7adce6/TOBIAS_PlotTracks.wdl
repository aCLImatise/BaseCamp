version 1.0

task TOBIASPlotTracks {
  input {
    Boolean? bigwigs
    Boolean? regions
    Boolean? sites
    Boolean? highlight
    Boolean? gtf
    Boolean? width
    Boolean? colors
    Boolean? labels
    Boolean? max_transcripts
    Boolean? outdir
    Int? verbosity
  }
  command <<<
    TOBIAS PlotTracks \
      ~{true="--bigwigs" false="" bigwigs} \
      ~{true="--regions" false="" regions} \
      ~{true="--sites" false="" sites} \
      ~{true="--highlight" false="" highlight} \
      ~{true="--gtf" false="" gtf} \
      ~{true="--width" false="" width} \
      ~{true="--colors" false="" colors} \
      ~{true="--labels" false="" labels} \
      ~{true="--max-transcripts" false="" max_transcripts} \
      ~{true="--outdir" false="" outdir} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    bigwigs: "[ [ ...]]  One or more bigwigs to show. Note: All bigwigs within one \"-- bigwigs\" argument will be normalized to each other. It is possible to give multiple \"--bigwigs\" arguments, which will be normalized independently per group (required)"
    regions: "Genomic regions to plot (required)"
    sites: "Genomic sites to show in plot (optional)"
    highlight: "Regions to highlight in plot (optional)"
    gtf: "GTF file containing genes to show (optional)"
    width: "Width of plot in cm (default 15)"
    colors: "[ [ ...]]   List of specific colors to use for plotting tracks"
    labels: "[ [ ...]]   Labels for tracks (default: prefix of bigwig)"
    max_transcripts: "Set a limit on number of transcripts per gene shown in plot (default: 1)"
    outdir: "Output folder (default: plottracks_output)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
  }
}