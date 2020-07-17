version 1.0

task SegtoolsGmtkParameters {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? no_plot
    Boolean? no_graph
    Boolean? create_mnemonics
    Boolean? allow_regex
    File? mnemonic_file
    String? outdir
    File? track_name_translation
    String? prob_threshold
    String? quantile_threshold
    Boolean? gene_graph
    String? val_pass_val
    String params_file
  }
  command <<<
    segtools-gmtk-parameters \
      ~{params_file} \
      ~{true="--clobber" false="" clobber} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--noplot" false="" no_plot} \
      ~{true="--nograph" false="" no_graph} \
      ~{true="--create-mnemonics" false="" create_mnemonics} \
      ~{true="--allow-regex" false="" allow_regex} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(track_name_translation) then ("--trackname-translation " +  '"' + track_name_translation + '"') else ""} \
      ~{if defined(prob_threshold) then ("--prob-threshold " +  '"' + prob_threshold + '"') else ""} \
      ~{if defined(quantile_threshold) then ("--quantile-threshold " +  '"' + quantile_threshold + '"') else ""} \
      ~{true="--gene-graph" false="" gene_graph} \
      ~{if defined(val_pass_val) then ("-R " +  '"' + val_pass_val + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    no_plot: "Do not generate any plots."
    no_graph: "Do not generate transition graph."
    create_mnemonics: "If mnemonics are not specified, they will be created and used for plotting"
    allow_regex: "If a file is specified with --trackname-translation, the mappings in this file will be interpreted as regular expressions instead of exact mappings. Thus, all underscores could be converted to periods with the single line: `_<TAB>.`. Mappings will be applied sequentially, so a second line of: `\.<TAB>#` would (together with the first line) convert all periods and underscores to pounds."
    mnemonic_file: "If specified, labels will be shown using mnemonics found in FILE"
    outdir: "File output directory (will be created if it does not exist) [default: gmtk_parameters]"
    track_name_translation: "Should be a file with rows <old-trackname><TAB><new- trackname>. Tracknames will be translated using this mapping before plotting the stats plot. By default, <old-trackname> must exactly match the name of a track, but --allow-regex provides more flexibility."
    prob_threshold: "ignore all transitions with probabilities below this absolute threshold [default: 0.15]"
    quantile_threshold: "ignore transitions with probabilities below this probability quantile [default: 0.0]"
    gene_graph: "Make each node of the graph a reference to a .ps image an \"image\" subdirectory. Currently, these .ps files need to be made separately."
    val_pass_val: "=VAL        Pass VAL for PARAM when calling R functions. May be specified multiple times."
    params_file: ""
  }
}