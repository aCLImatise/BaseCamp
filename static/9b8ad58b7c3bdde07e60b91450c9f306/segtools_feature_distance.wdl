version 1.0

task Segtoolsfeaturedistance {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? stranded
    Boolean? print_nearest
    Boolean? all_overlapping
    Boolean? no_plot
    Boolean? replot
    Int? n_bins
    Int? bin_width
    File? mnemonic_file
    File? outdir
    String? val_pass_val
    String segmentation
    String annotation
  }
  command <<<
    segtools_feature_distance \
      ~{segmentation} \
      ~{annotation} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if (print_nearest) then "--print-nearest" else ""} \
      ~{if (all_overlapping) then "--all-overlapping" else ""} \
      ~{if (no_plot) then "--noplot" else ""} \
      ~{if (replot) then "--replot" else ""} \
      ~{if defined(n_bins) then ("--n-bins " +  '"' + n_bins + '"') else ""} \
      ~{if defined(bin_width) then ("--bin-width " +  '"' + bin_width + '"') else ""} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    stranded: "Strand correct features in the ANNOTATION file. If the\\nfeature contains strand information, the sign of the\\ndistance value is used to portray the relationship\\nbetween the segment and the nearest stranded feature.\\nA negative distance value indicates that the segment\\nis nearest the 5' end of the feature, whereas a\\npositive value indicates the segment is nearest the 3'\\nend of the feature."
    print_nearest: "The name of the nearest feature will be printed after\\neach distance (with a space separating the two) for\\nfeatures from the ANNOTATION file. If multiple\\nfeatures are equally near (or overlap), it is\\nundefined which will be printed"
    all_overlapping: "If multiple features in the ANNOTATION file overlap a\\nsegment, a separate line is printed for each\\noverlapping segment-feature pair. This is most\\ninteresting with --print-nearest. Otherwise, the first\\noverlapping segment will be used for printing."
    no_plot: "Do not generate any plots."
    replot: "Load data from output tab files and regenerate plots\\ninstead of recomputing data."
    n_bins: "Number of bins to use in histogram for distances\\ngreater than zero and less than or equal to N*W.\\nDistances of 0 and greater than N*W are placed in\\nadditional bins. If --stranded, N more bins are\\nincluded in the negative direction and a bin for\\ndistances less than -N*W."
    bin_width: "Number of bases in each bin. If --stranded, bins cover\\ndistances of (-Inf,-N*W), ..., [-W,0), [0], (0,W],\\n..., (N*W,Inf). Otherwise, the bins cover distances of\\n[0], (0,W], (W,2W], ..., (N*W,Inf)."
    mnemonic_file: "If specified, labels will be shown using mnemonics\\nfound in FILE"
    outdir: "File output directory (will be created if it does not\\nexist) [default: feature_distance]"
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be\\nspecified multiple times.\\n"
    segmentation: ""
    annotation: ""
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}