version 1.0

task Segtoolsaggregation {
  input {
    File? mnemonic_file
    File? outdir
    Boolean? clobber
    Boolean? quiet
    Boolean? quick
    Boolean? replot
    Boolean? no_plot
    Boolean? groups
    Boolean? normalize
    String? mode
    Int? flank_bases
    Int? region_samples
    Int? intron_samples
    Int? exon_samples
    String? val_pass_val
    String segmentation
    String annotation
  }
  command <<<
    segtools_aggregation \
      ~{segmentation} \
      ~{annotation} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (quick) then "--quick" else ""} \
      ~{if (replot) then "--replot" else ""} \
      ~{if (no_plot) then "--noplot" else ""} \
      ~{if (groups) then "--groups" else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(flank_bases) then ("--flank-bases " +  '"' + flank_bases + '"') else ""} \
      ~{if defined(region_samples) then ("--region-samples " +  '"' + region_samples + '"') else ""} \
      ~{if defined(intron_samples) then ("--intron-samples " +  '"' + intron_samples + '"') else ""} \
      ~{if defined(exon_samples) then ("--exon-samples " +  '"' + exon_samples + '"') else ""} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    mnemonic_file: "If specified, labels will be shown using mnemonics\\nfound in FILE"
    outdir: "File output directory (will be created if it does not\\nexist) [default: feature_aggregation]"
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    quick: "Compute values only for one chromosome."
    replot: "Load data from output tab files and regenerate plots\\ninstead of recomputing data."
    no_plot: "Do not generate any plots."
    groups: "Separate data into different groups based upon\\nANNOTATION's 'name'/'feature' field if --mode=region\\nor --mode=point. Does nothing if --mode=gene."
    normalize: "Plot the relative frequency of SEGMENTATION labels,\\nnormalized by the number of segments in that group\\ninstead of the raw counts (normalize over SEGMENTATION\\nlabels)"
    mode: "one of: point, region, gene. [default: point]"
    flank_bases: "Aggregate this many base pairs off each end of feature\\nor gene [default: 500]"
    region_samples: "If --mode=region, aggregate over each internal feature\\nby taking this many evenly-spaced samples. Warning:\\nfeatures with a length < N will be excluded from the\\nresults [default: 50]"
    intron_samples: "Aggregate over each intron by taking this many evenly-\\nspaced samples [default: 50]"
    exon_samples: "Aggregate over each exon by taking this many evenly-\\nspaced samples [default: 25]"
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be\\nspecified multiple times.\\n"
    segmentation: ""
    annotation: ""
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}