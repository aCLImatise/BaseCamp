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
    Directory? outdir
    Int? verbosity
  }
  command <<<
    TOBIAS PlotTracks \
      ~{if (bigwigs) then "--bigwigs" else ""} \
      ~{if (regions) then "--regions" else ""} \
      ~{if (sites) then "--sites" else ""} \
      ~{if (highlight) then "--highlight" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (width) then "--width" else ""} \
      ~{if (colors) then "--colors" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if (max_transcripts) then "--max-transcripts" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    bigwigs: "[ [ ...]]  One or more bigwigs to show. Note: All bigwigs within one \\\"--\\nbigwigs\\\" argument will be normalized to each other. It is possible\\nto give multiple \\\"--bigwigs\\\" arguments, which will be normalized\\nindependently per group (required)"
    regions: "Genomic regions to plot (required)"
    sites: "Genomic sites to show in plot (optional)"
    highlight: "Regions to highlight in plot (optional)"
    gtf: "GTF file containing genes to show (optional)"
    width: "Width of plot in cm (default 15)"
    colors: "[ [ ...]]   List of specific colors to use for plotting tracks"
    labels: "[ [ ...]]   Labels for tracks (default: prefix of bigwig)"
    max_transcripts: "Set a limit on number of transcripts per gene shown in plot\\n(default: 1)"
    outdir: "Output folder (default: plottracks_output)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\\nstats, 4: debug, 5: spam) (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}