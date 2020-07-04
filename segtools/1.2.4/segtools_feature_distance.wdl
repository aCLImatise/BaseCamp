version 1.0

task SegtoolsFeatureDistance {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? stranded
    Boolean? print_nearest
    Boolean? all_overlapping
    Boolean? no_plot
    Boolean? replot
    String? n_bins
    String? bin_width
    File? mnemonic_file
    String? outdir
    String? val_pass_val
    String segmentation
    String annotation
  }
  command <<<
    segtools-feature-distance \
      ~{segmentation} \
      ~{annotation} \
      ~{true="--clobber" false="" clobber} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--stranded" false="" stranded} \
      ~{true="--print-nearest" false="" print_nearest} \
      ~{true="--all-overlapping" false="" all_overlapping} \
      ~{true="--noplot" false="" no_plot} \
      ~{true="--replot" false="" replot} \
      ~{if defined(n_bins) then ("--n-bins " +  '"' + n_bins + '"') else ""} \
      ~{if defined(bin_width) then ("--bin-width " +  '"' + bin_width + '"') else ""} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    stranded: "Strand correct features in the ANNOTATION file. If the feature contains strand information, the sign of the distance value is used to portray the relationship between the segment and the nearest stranded feature. A negative distance value indicates that the segment is nearest the 5' end of the feature, whereas a positive value indicates the segment is nearest the 3' end of the feature."
    print_nearest: "The name of the nearest feature will be printed after each distance (with a space separating the two) for features from the ANNOTATION file. If multiple features are equally near (or overlap), it is undefined which will be printed"
    all_overlapping: "If multiple features in the ANNOTATION file overlap a segment, a separate line is printed for each overlapping segment-feature pair. This is most interesting with --print-nearest. Otherwise, the first overlapping segment will be used for printing."
    no_plot: "Do not generate any plots."
    replot: "Load data from output tab files and regenerate plots instead of recomputing data."
    n_bins: "Number of bins to use in histogram for distances greater than zero and less than or equal to N*W. Distances of 0 and greater than N*W are placed in additional bins. If --stranded, N more bins are included in the negative direction and a bin for distances less than -N*W."
    bin_width: "Number of bases in each bin. If --stranded, bins cover distances of (-Inf,-N*W), ..., [-W,0), [0], (0,W], ..., (N*W,Inf). Otherwise, the bins cover distances of [0], (0,W], (W,2W], ..., (N*W,Inf)."
    mnemonic_file: "If specified, labels will be shown using mnemonics found in FILE"
    outdir: "File output directory (will be created if it does not exist) [default: feature_distance]"
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be specified multiple times."
    segmentation: ""
    annotation: ""
  }
}