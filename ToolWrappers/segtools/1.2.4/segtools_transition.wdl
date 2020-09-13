version 1.0

task Segtoolstransition {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? replot
    Boolean? no_plot
    Boolean? no_graph
    File? mnemonic_file
    File? outdir
    Boolean? dendrogram
    Float? prob_threshold
    Float? quantile_threshold
    Boolean? gmt_k
    String? val_pass_val
    String segmentation
  }
  command <<<
    segtools_transition \
      ~{segmentation} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (replot) then "--replot" else ""} \
      ~{if (no_plot) then "--noplot" else ""} \
      ~{if (no_graph) then "--nograph" else ""} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (dendrogram) then "--dendrogram" else ""} \
      ~{if defined(prob_threshold) then ("--prob-threshold " +  '"' + prob_threshold + '"') else ""} \
      ~{if defined(quantile_threshold) then ("--quantile-threshold " +  '"' + quantile_threshold + '"') else ""} \
      ~{if (gmt_k) then "--gmtk" else ""} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    replot: "Load data from output tab files and regenerate plots\\ninstead of recomputing data."
    no_plot: "Do not generate any plots."
    no_graph: "Do not generate transition graph"
    mnemonic_file: "If specified, labels will be shown using mnemonics\\nfound in FILE"
    outdir: "File output directory (will be created if it does not\\nexist) [default: transition]"
    dendrogram: "include dendrogram along edge of levelplot [default:\\nFalse]"
    prob_threshold: "ignore all transitions with probabilities below this\\nabsolute threshold [default: 0.15]"
    quantile_threshold: "ignore transitions with probabilities below this\\nprobability quantile [default: 0.0]"
    gmt_k: "The SEGMENTATION argument will instead be treated as a\\nGMTK parameter file. If a mnemonic file is not\\nspecified, one will be created and used."
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be\\nspecified multiple times.\\n"
    segmentation: ""
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}