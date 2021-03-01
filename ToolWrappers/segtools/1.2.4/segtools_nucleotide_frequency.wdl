version 1.0

task Segtoolsnucleotidefrequency {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? quick
    Boolean? replot
    Boolean? no_plot
    File? mnemonic_file
    File? outdir
    String? val_pass_val
    String annotation
    String genome_data_file
  }
  command <<<
    segtools_nucleotide_frequency \
      ~{annotation} \
      ~{genome_data_file} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (quick) then "--quick" else ""} \
      ~{if (replot) then "--replot" else ""} \
      ~{if (no_plot) then "--noplot" else ""} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    quick: "Compute values only for one chromosome."
    replot: "Load data from output tab files and regenerate plots\\ninstead of recomputing data."
    no_plot: "Do not generate any plots."
    mnemonic_file: "If specified, labels will be shown using mnemonics\\nfound in FILE"
    outdir: "File output directory (will be created if it does not\\nexist) [default: nucleotide_frequency]"
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be\\nspecified multiple times.\\n"
    annotation: ""
    genome_data_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}