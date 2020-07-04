version 1.0

task SegtoolsTransition {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? replot
    Boolean? no_plot
    Boolean? no_graph
    File? mnemonic_file
    String? outdir
    Boolean? dendrogram
    String? prob_threshold
    String? quantile_threshold
    Boolean? gmt_k
    String? val_pass_val
    String segmentation
  }
  command <<<
    segtools-transition \
      ~{segmentation} \
      ~{true="--clobber" false="" clobber} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--replot" false="" replot} \
      ~{true="--noplot" false="" no_plot} \
      ~{true="--nograph" false="" no_graph} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--dendrogram" false="" dendrogram} \
      ~{if defined(prob_threshold) then ("--prob-threshold " +  '"' + prob_threshold + '"') else ""} \
      ~{if defined(quantile_threshold) then ("--quantile-threshold " +  '"' + quantile_threshold + '"') else ""} \
      ~{true="--gmtk" false="" gmt_k} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    replot: "Load data from output tab files and regenerate plots instead of recomputing data."
    no_plot: "Do not generate any plots."
    no_graph: "Do not generate transition graph"
    mnemonic_file: "If specified, labels will be shown using mnemonics found in FILE"
    outdir: "File output directory (will be created if it does not exist) [default: transition]"
    dendrogram: "include dendrogram along edge of levelplot [default: False]"
    prob_threshold: "ignore all transitions with probabilities below this absolute threshold [default: 0.15]"
    quantile_threshold: "ignore transitions with probabilities below this probability quantile [default: 0.0]"
    gmt_k: "The SEGMENTATION argument will instead be treated as a GMTK parameter file. If a mnemonic file is not specified, one will be created and used."
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be specified multiple times."
    segmentation: ""
  }
}