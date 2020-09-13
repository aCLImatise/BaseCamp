version 1.0

task Segtoolslengthdistribution {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? replot
    Boolean? no_plot
    Boolean? no_segments
    File? mnemonic_file
    File? outdir
    String? val_pass_val
    String plot
  }
  command <<<
    segtools_length_distribution \
      ~{plot} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (replot) then "--replot" else ""} \
      ~{if (no_plot) then "--noplot" else ""} \
      ~{if (no_segments) then "--no-segments" else ""} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    replot: "Load data from output tab files and regenerate plots\\ninstead of recomputing data."
    no_plot: "Do not generate any plots."
    no_segments: "Do not show total segments covered by labels in size"
    mnemonic_file: "If specified, labels will be shown using mnemonics\\nfound in FILE"
    outdir: "File output directory (will be created if it does not\\nexist) [default: length_distribution]"
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be\\nspecified multiple times.\\n"
    plot: "--no-bases          Do not show total bases covered by labels in size plot"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}