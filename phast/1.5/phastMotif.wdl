version 1.0

task PhastMotif {
  input {
    File? required_use_specified
    String? input_format_alignment
    File? read_background_model
    Boolean? estimate_separate_model
    Int? learn_motifs_specified
    Int? report_best_default
    Boolean? meme_mode_multinomial
    Boolean? use_models_modelscharacters
    String? perform_n_restarts
    String? specified_see_below
    Int? run_algorithm_position
    Boolean? xy_initialize_most
    String? p_r_winnow
    Int? i_p_number
    String? use_specified_prefix
    File? produce_html_formatted
    Boolean? produce_bed_file
    Boolean? use_h_suppress
    String distributions_dot
    String models_dot
    String independent_dot
    String examples_dot
    String likelihood_dot
  }
  command <<<
    phastMotif \
      ~{distributions_dot} \
      ~{models_dot} \
      ~{independent_dot} \
      ~{examples_dot} \
      ~{likelihood_dot} \
      ~{if defined(required_use_specified) then ("-t " +  '"' + required_use_specified + '"') else ""} \
      ~{if defined(input_format_alignment) then ("-i " +  '"' + input_format_alignment + '"') else ""} \
      ~{if defined(read_background_model) then ("-b " +  '"' + read_background_model + '"') else ""} \
      ~{if (estimate_separate_model) then "-s" else ""} \
      ~{if defined(learn_motifs_specified) then ("-k " +  '"' + learn_motifs_specified + '"') else ""} \
      ~{if defined(report_best_default) then ("-B " +  '"' + report_best_default + '"') else ""} \
      ~{if (meme_mode_multinomial) then "-m" else ""} \
      ~{if (use_models_modelscharacters) then "-p" else ""} \
      ~{if defined(perform_n_restarts) then ("-n " +  '"' + perform_n_restarts + '"') else ""} \
      ~{if defined(specified_see_below) then ("-R " +  '"' + specified_see_below + '"') else ""} \
      ~{if defined(run_algorithm_position) then ("-I " +  '"' + run_algorithm_position + '"') else ""} \
      ~{if (xy_initialize_most) then "-P" else ""} \
      ~{if defined(p_r_winnow) then ("-w " +  '"' + p_r_winnow + '"') else ""} \
      ~{if defined(i_p_number) then ("-c " +  '"' + i_p_number + '"') else ""} \
      ~{if defined(use_specified_prefix) then ("-o " +  '"' + use_specified_prefix + '"') else ""} \
      ~{if (produce_html_formatted) then "-H" else ""} \
      ~{if (produce_bed_file) then "-D" else ""} \
      ~{if (use_h_suppress) then "-x" else ""}
  >>>
  parameter_meta {
    required_use_specified: "(Required unless -m or -p) Use specified tree topology for\\nall phylogenetic models (Newick format)."
    input_format_alignment: "Input format for alignment.  May be FASTA, PHYLIP, MPM, SS,\\nor MAF (default FASTA)."
    read_background_model: "Read background model from specified file (.mod format).\\nBy default, the background model is estimated\\nin a preprocessing step, by pooling all data."
    estimate_separate_model: "Estimate a separate background model for each multiple alignment.\\n(Not yet implemented.)"
    learn_motifs_specified: "Learn motifs of the specified size (default is 10)."
    report_best_default: "Report best <n> motifs (default 3)."
    meme_mode_multinomial: "MEME mode.  Use multinomial rather than phylogenetic"
    use_models_modelscharacters: "Use \\\"profile\\\" models rather than phylogenetic models\\n(characters in each alignment column assumed\\nindependent).  The resulting model is a hybrid of the\\nfull model and MEME's model.  Essentially, it uses the\\nmultiple alignments but not the phylogeny.  NOT YET IMPLEMENTED."
    perform_n_restarts: "Perform <n> random restarts and report the motif with highest"
    specified_see_below: "specified (see below)."
    run_algorithm_position: "Run the algorithm after a \\\"soft\\\" initialization with\\neach of the consensus sequences in the specified list.\\nAt each position, <pc> pseudocounts (see -c) are given\\nto the consensus base and 1 pseudocount to all other\\nbases.  Each string must have length at most equal to\\nthe size of the motif.  If shorter, it is used as a\\n\\\"seed\\\" for a motif, with flanking positions treated as\\nwildcards."
    xy_initialize_most: "<x,y>  Initialize with the x most prevalent y-tuples.  A soft\\ninitialization is performed, as above.  If y is less\\nthan the motif size, y-tuples are used as a \\\"seed\\\" for\\na motif, as above."
    p_r_winnow: "(for use with -I, -P, -R) Winnow initialization sequences\\nto the top <n> based on the unmaximized likelihood."
    i_p_number: "(for use with -I, -P, -R) Number of pseudocounts for\\nconsensus bases (default 5)."
    use_specified_prefix: "Use the specified prefix for all output files (dflt. \\\"phastm\\\")."
    produce_html_formatted: "Produce HTML formatted output, in addition to ordinary output.\\nOne file is produced per predicted motif, as well as a\\nsingle HTML-formatted summary file."
    produce_bed_file: "Produce a BED file with predicted motifs, for use in the\\nUCSC browser.  Currently, sequence names must be\\nformatted such as \\\"chr10:102553847-102554897+\\\", with\\nthe final '+' or '-' indicating strand."
    use_h_suppress: "(For use with -H or -D) Suppress ordinary output to stdout."
    distributions_dot: "The specified multiple alignments may"
    models_dot: "Causes multiple alignments to be ignored -- any"
    independent_dot: "-d <+lst> Use the discriminative training method of Segal et"
    examples_dot: "Can be used with or without -m."
    likelihood_dot: "Default number is 10.  Ignored with -I, -P, and"
  }
  output {
    File out_stdout = stdout()
    File out_produce_html_formatted = "${in_produce_html_formatted}"
  }
}