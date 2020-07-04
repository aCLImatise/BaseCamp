version 1.0

task SegtoolsNucleotideFrequency {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? quick
    Boolean? replot
    Boolean? no_plot
    File? mnemonic_file
    String? outdir
    String? val_pass_val
    String annotation
    String genome_data_file
  }
  command <<<
    segtools-nucleotide-frequency \
      ~{annotation} \
      ~{genome_data_file} \
      ~{true="--clobber" false="" clobber} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--quick" false="" quick} \
      ~{true="--replot" false="" replot} \
      ~{true="--noplot" false="" no_plot} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    quick: "Compute values only for one chromosome."
    replot: "Load data from output tab files and regenerate plots instead of recomputing data."
    no_plot: "Do not generate any plots."
    mnemonic_file: "If specified, labels will be shown using mnemonics found in FILE"
    outdir: "File output directory (will be created if it does not exist) [default: nucleotide_frequency]"
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be specified multiple times."
    annotation: ""
    genome_data_file: ""
  }
}