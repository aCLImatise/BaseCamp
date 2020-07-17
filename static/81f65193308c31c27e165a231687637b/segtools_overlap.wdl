version 1.0

task SegtoolsOverlap {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? quick
    Boolean? replot
    Boolean? no_plot
    Boolean? cluster
    Boolean? print_segments
    Boolean? max_contrast
    String? by
    String? min_overlap
    File? mnemonic_file
    File? feature_mnemonic_file
    String? outdir
    String? val_pass_val
    String segmentation
    String annotation
  }
  command <<<
    segtools-overlap \
      ~{segmentation} \
      ~{annotation} \
      ~{true="--clobber" false="" clobber} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--quick" false="" quick} \
      ~{true="--replot" false="" replot} \
      ~{true="--noplot" false="" no_plot} \
      ~{true="--cluster" false="" cluster} \
      ~{true="--print-segments" false="" print_segments} \
      ~{true="--max-contrast" false="" max_contrast} \
      ~{if defined(by) then ("--by " +  '"' + by + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(feature_mnemonic_file) then ("--feature-mnemonic-file " +  '"' + feature_mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    quick: "Compute values only for one chromosome."
    replot: "Load data from output tab files and regenerate plots instead of recomputing data."
    no_plot: "Do not generate any plots."
    cluster: "Cluster rows and columns in heat map plot"
    print_segments: "For each group in the SEGMENTATION, a separate output file will be created that contains a list of all the segments that the group was found to overlap with. Output files are named overlap.segments.X.txt, where X is the name of the SEGMENTATION group."
    max_contrast: "Saturate color range instead of having it go from 0 to 1"
    by: "One of: ['segments', 'bases'], which determines the definition of overlap. @segments: The value associated with two features overlapping will be 1 if they overlap, and 0 otherwise. @bases: The value associated with two features overlapping will be number of base pairs which they overlap. [default: bases]"
    min_overlap: "The minimum number of base pairs that two features must overlap for them to be classified as overlapping. This integer can be either positive (features overlap only if they share at least this many bases) or negative (features overlap if there are no more than this many bases between them). Both a negative min- overlap and --by=bases cannot be specified together. [default: 1]"
    mnemonic_file: "If specified, labels will be shown using mnemonics found in FILE"
    feature_mnemonic_file: "If specified, ANNOTATION groups will be shown using mnemonics found in FILE."
    outdir: "File output directory (will be created if it does not exist) [default: overlap]"
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be specified multiple times."
    segmentation: ""
    annotation: ""
  }
}