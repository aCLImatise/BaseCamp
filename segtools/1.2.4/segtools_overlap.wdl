version 1.0

task Segtoolsoverlap {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? quick
    Boolean? replot
    Boolean? no_plot
    Boolean? cluster
    File? print_segments
    Boolean? max_contrast
    Int? by
    Int? min_overlap
    File? mnemonic_file
    File? feature_mnemonic_file
    File? outdir
    String? val_pass_val
    String segmentation
    String annotation
  }
  command <<<
    segtools_overlap \
      ~{segmentation} \
      ~{annotation} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (quick) then "--quick" else ""} \
      ~{if (replot) then "--replot" else ""} \
      ~{if (no_plot) then "--noplot" else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if (print_segments) then "--print-segments" else ""} \
      ~{if (max_contrast) then "--max-contrast" else ""} \
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
    replot: "Load data from output tab files and regenerate plots\\ninstead of recomputing data."
    no_plot: "Do not generate any plots."
    cluster: "Cluster rows and columns in heat map plot"
    print_segments: "For each group in the SEGMENTATION, a separate output\\nfile will be created that contains a list of all the\\nsegments that the group was found to overlap with.\\nOutput files are named overlap.segments.X.txt, where X\\nis the name of the SEGMENTATION group."
    max_contrast: "Saturate color range instead of having it go from 0 to\\n1"
    by: "One of: ['segments', 'bases'], which determines the\\ndefinition of overlap. @segments: The value associated\\nwith two features overlapping will be 1 if they\\noverlap, and 0 otherwise. @bases: The value associated\\nwith two features overlapping will be number of base\\npairs which they overlap. [default: bases]"
    min_overlap: "The minimum number of base pairs that two features\\nmust overlap for them to be classified as overlapping.\\nThis integer can be either positive (features overlap\\nonly if they share at least this many bases) or\\nnegative (features overlap if there are no more than\\nthis many bases between them). Both a negative min-\\noverlap and --by=bases cannot be specified together.\\n[default: 1]"
    mnemonic_file: "If specified, labels will be shown using mnemonics\\nfound in FILE"
    feature_mnemonic_file: "If specified, ANNOTATION groups will be shown using\\nmnemonics found in FILE."
    outdir: "File output directory (will be created if it does not\\nexist) [default: overlap]"
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be\\nspecified multiple times.\\n"
    segmentation: ""
    annotation: ""
  }
  output {
    File out_stdout = stdout()
    File out_print_segments = "${in_print_segments}"
    File out_outdir = "${in_outdir}"
  }
}