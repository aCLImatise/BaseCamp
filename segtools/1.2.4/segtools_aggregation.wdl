version 1.0

task SegtoolsAggregation {
  input {
    File? mnemonic_file
    String? outdir
    Boolean? clobber
    Boolean? quiet
    Boolean? quick
    Boolean? replot
    Boolean? no_plot
    Boolean? groups
    Boolean? normalize
    String? mode
    String? flank_bases
    String? region_samples
    String? intron_samples
    String? exon_samples
    String? val_pass_val
    String segmentation
    String annotation
  }
  command <<<
    segtools-aggregation \
      ~{segmentation} \
      ~{annotation} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--clobber" false="" clobber} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--quick" false="" quick} \
      ~{true="--replot" false="" replot} \
      ~{true="--noplot" false="" no_plot} \
      ~{true="--groups" false="" groups} \
      ~{true="--normalize" false="" normalize} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(flank_bases) then ("--flank-bases " +  '"' + flank_bases + '"') else ""} \
      ~{if defined(region_samples) then ("--region-samples " +  '"' + region_samples + '"') else ""} \
      ~{if defined(intron_samples) then ("--intron-samples " +  '"' + intron_samples + '"') else ""} \
      ~{if defined(exon_samples) then ("--exon-samples " +  '"' + exon_samples + '"') else ""} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    mnemonic_file: "If specified, labels will be shown using mnemonics found in FILE"
    outdir: "File output directory (will be created if it does not exist) [default: feature_aggregation]"
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    quick: "Compute values only for one chromosome."
    replot: "Load data from output tab files and regenerate plots instead of recomputing data."
    no_plot: "Do not generate any plots."
    groups: "Separate data into different groups based upon ANNOTATION's 'name'/'feature' field if --mode=region or --mode=point. Does nothing if --mode=gene."
    normalize: "Plot the relative frequency of SEGMENTATION labels, normalized by the number of segments in that group instead of the raw counts (normalize over SEGMENTATION labels)"
    mode: "one of: point, region, gene. [default: point]"
    flank_bases: "Aggregate this many base pairs off each end of feature or gene [default: 500]"
    region_samples: "If --mode=region, aggregate over each internal feature by taking this many evenly-spaced samples. Warning: features with a length < N will be excluded from the results [default: 50]"
    intron_samples: "Aggregate over each intron by taking this many evenly- spaced samples [default: 50]"
    exon_samples: "Aggregate over each exon by taking this many evenly- spaced samples [default: 25]"
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be specified multiple times."
    segmentation: ""
    annotation: ""
  }
}