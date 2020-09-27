version 1.0

task Segtoolsgmtkparameters {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? no_plot
    Boolean? no_graph
    Boolean? create_mnemonics
    Boolean? allow_regex
    File? mnemonic_file
    File? outdir
    File? track_name_translation
    Float? prob_threshold
    Float? quantile_threshold
    Boolean? gene_graph
    String? val_pass_val
    String params_file
  }
  command <<<
    segtools_gmtk_parameters \
      ~{params_file} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (no_plot) then "--noplot" else ""} \
      ~{if (no_graph) then "--nograph" else ""} \
      ~{if (create_mnemonics) then "--create-mnemonics" else ""} \
      ~{if (allow_regex) then "--allow-regex" else ""} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(track_name_translation) then ("--trackname-translation " +  '"' + track_name_translation + '"') else ""} \
      ~{if defined(prob_threshold) then ("--prob-threshold " +  '"' + prob_threshold + '"') else ""} \
      ~{if defined(quantile_threshold) then ("--quantile-threshold " +  '"' + quantile_threshold + '"') else ""} \
      ~{if (gene_graph) then "--gene-graph" else ""} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    no_plot: "Do not generate any plots."
    no_graph: "Do not generate transition graph."
    create_mnemonics: "If mnemonics are not specified, they will be created\\nand used for plotting"
    allow_regex: "If a file is specified with --trackname-translation,\\nthe mappings in this file will be interpreted as\\nregular expressions instead of exact mappings. Thus,\\nall underscores could be converted to periods with the\\nsingle line: `_<TAB>.`. Mappings will be applied\\nsequentially, so a second line of: `\\.<TAB>#` would\\n(together with the first line) convert all periods and\\nunderscores to pounds."
    mnemonic_file: "If specified, labels will be shown using mnemonics\\nfound in FILE"
    outdir: "File output directory (will be created if it does not\\nexist) [default: gmtk_parameters]"
    track_name_translation: "Should be a file with rows <old-trackname><TAB><new-\\ntrackname>. Tracknames will be translated using this\\nmapping before plotting the stats plot. By default,\\n<old-trackname> must exactly match the name of a\\ntrack, but --allow-regex provides more flexibility."
    prob_threshold: "ignore all transitions with probabilities below this\\nabsolute threshold [default: 0.15]"
    quantile_threshold: "ignore transitions with probabilities below this\\nprobability quantile [default: 0.0]"
    gene_graph: "Make each node of the graph a reference to a .ps image\\nan \\\"image\\\" subdirectory. Currently, these .ps files\\nneed to be made separately."
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be\\nspecified multiple times.\\n"
    params_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}