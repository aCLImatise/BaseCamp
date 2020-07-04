version 1.0

task PhastMotif {
  input {
    File? required_m_specified
    String? input_format_alignment
    File? read_background_model
    Boolean? estimate_separate_model
    Int? learn_motifs_specified
    String? report_best_default
    Boolean? meme_mode_use
    Boolean? lst_use_method
    Boolean? use_models_characters
    String? perform_random_restarts
    String? run_algorithm_motif
    Boolean? xy_initialize_x
    Boolean? xy_initialize_random
    String? use_winnow_based
    String? p_r_number
    Boolean? use_i_instead
    String? use_specified_prefix
    Boolean? produce_html_formatted
    Boolean? produce_bed_file
    Boolean? use_h_d
    String msa_list
  }
  command <<<
    phastMotif \
      ~{msa_list} \
      ~{if defined(required_m_specified) then ("-t " +  '"' + required_m_specified + '"') else ""} \
      ~{if defined(input_format_alignment) then ("-i " +  '"' + input_format_alignment + '"') else ""} \
      ~{if defined(read_background_model) then ("-b " +  '"' + read_background_model + '"') else ""} \
      ~{true="-s" false="" estimate_separate_model} \
      ~{if defined(learn_motifs_specified) then ("-k " +  '"' + learn_motifs_specified + '"') else ""} \
      ~{if defined(report_best_default) then ("-B " +  '"' + report_best_default + '"') else ""} \
      ~{true="-m" false="" meme_mode_use} \
      ~{true="-d" false="" lst_use_method} \
      ~{true="-p" false="" use_models_characters} \
      ~{if defined(perform_random_restarts) then ("-n " +  '"' + perform_random_restarts + '"') else ""} \
      ~{if defined(run_algorithm_motif) then ("-I " +  '"' + run_algorithm_motif + '"') else ""} \
      ~{true="-P" false="" xy_initialize_x} \
      ~{true="-R" false="" xy_initialize_random} \
      ~{if defined(use_winnow_based) then ("-w " +  '"' + use_winnow_based + '"') else ""} \
      ~{if defined(p_r_number) then ("-c " +  '"' + p_r_number + '"') else ""} \
      ~{true="-S" false="" use_i_instead} \
      ~{if defined(use_specified_prefix) then ("-o " +  '"' + use_specified_prefix + '"') else ""} \
      ~{true="-H" false="" produce_html_formatted} \
      ~{true="-D" false="" produce_bed_file} \
      ~{true="-x" false="" use_h_d}
  >>>
  parameter_meta {
    required_m_specified: "(Required unless -m or -p) Use specified tree topology for all phylogenetic models (Newick format)."
    input_format_alignment: "Input format for alignment.  May be FASTA, PHYLIP, MPM, SS, or MAF (default FASTA)."
    read_background_model: "Read background model from specified file (.mod format). By default, the background model is estimated in a preprocessing step, by pooling all data."
    estimate_separate_model: "Estimate a separate background model for each multiple alignment. (Not yet implemented.)"
    learn_motifs_specified: "Learn motifs of the specified size (default is 10)."
    report_best_default: "Report best <n> motifs (default 3)."
    meme_mode_use: "MEME mode.  Use multinomial rather than phylogenetic models.  Causes multiple alignments to be ignored -- any gaps are discarded and all sequences are assumed independent."
    lst_use_method: "<+lst> Use the discriminative training method of Segal et al. (RECOMB'02), rather than EM.  The specified list should contain the filenames from msa_list that are to be considered *positive* examples (containing the desired motif); all others will be considered negative examples.  Can be used with or without -m."
    use_models_characters: "Use \"profile\" models rather than phylogenetic models (characters in each alignment column assumed independent).  The resulting model is a hybrid of the full model and MEME's model.  Essentially, it uses the multiple alignments but not the phylogeny.  NOT YET IMPLEMENTED."
    perform_random_restarts: "Perform <n> random restarts and report the motif with highest likelihood.  Default number is 10.  Ignored with -I, -P, and -R unless -S is specified (see below)."
    run_algorithm_motif: "Run the algorithm after a \"soft\" initialization with each of the consensus sequences in the specified list. At each position, <pc> pseudocounts (see -c) are given to the consensus base and 1 pseudocount to all other bases.  Each string must have length at most equal to the size of the motif.  If shorter, it is used as a \"seed\" for a motif, with flanking positions treated as wildcards."
    xy_initialize_x: "<x,y>  Initialize with the x most prevalent y-tuples.  A soft initialization is performed, as above.  If y is less than the motif size, y-tuples are used as a \"seed\" for a motif, as above."
    xy_initialize_random: "<x,y>  Initialize with a random sample of x y-tuples.  A soft initialization is performed, as above.  If y is less than the motif size, y-tuples are used as a \"seed\" for a motif, as above."
    use_winnow_based: "(for use with -I, -P, -R) Winnow initialization sequences to the top <n> based on the unmaximized likelihood."
    p_r_number: "(for use with -I, -P, -R) Number of pseudocounts for consensus bases (default 5)."
    use_i_instead: "(for use with -I, -P, -R) Instead of doing a deterministic initialization based on a consensus sequence, sample parameters from a Dirichlet distribution defined by the pseudocounts (see -c).  In this case, random restarts are performed, as specified by -n."
    use_specified_prefix: "Use the specified prefix for all output files (dflt. \"phastm\")."
    produce_html_formatted: "Produce HTML formatted output, in addition to ordinary output. One file is produced per predicted motif, as well as a  single HTML-formatted summary file."
    produce_bed_file: "Produce a BED file with predicted motifs, for use in the  UCSC browser.  Currently, sequence names must be formatted such as \"chr10:102553847-102554897+\", with the final '+' or '-' indicating strand."
    use_h_d: "(For use with -H or -D) Suppress ordinary output to stdout."
    msa_list: ""
  }
}