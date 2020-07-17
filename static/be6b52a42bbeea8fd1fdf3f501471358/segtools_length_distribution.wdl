version 1.0

task SegtoolsLengthDistribution {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? replot
    Boolean? no_plot
    Boolean? no_segments
    Boolean? no_bases
    File? mnemonic_file
    String? outdir
    String? val_pass_val
    String annotation
  }
  command <<<
    segtools-length-distribution \
      ~{annotation} \
      ~{true="--clobber" false="" clobber} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--replot" false="" replot} \
      ~{true="--noplot" false="" no_plot} \
      ~{true="--no-segments" false="" no_segments} \
      ~{true="--no-bases" false="" no_bases} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    replot: "Load data from output tab files and regenerate plots instead of recomputing data."
    no_plot: "Do not generate any plots."
    no_segments: "Do not show total segments covered by labels in size plot"
    no_bases: "Do not show total bases covered by labels in size plot"
    mnemonic_file: "If specified, labels will be shown using mnemonics found in FILE"
    outdir: "File output directory (will be created if it does not exist) [default: length_distribution]"
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be specified multiple times."
    annotation: ""
  }
}