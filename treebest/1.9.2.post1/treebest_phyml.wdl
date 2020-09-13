version 1.0

task TreebestPhyml {
  input {
    String? build_opt_loglk
    Boolean? input_nucleotide_alignment
    Boolean? print_out_statistics
    Boolean? mask_lowscoring_segments
    Boolean? collapse_alternative_splicing
    Int? number_bootstraps_slow
    File? write_output_file
    Int? quality_cutoff_
    Int? jc_kp_f
    Int? number_relative_substitution
    Float? transversiontransition_ratio_estimatinig
    Float? alpha_parameter_gamma
    Float? proportion_invariable_sites
    Boolean? use_species_tree
    File? species_tree_
    Float? duplication_probability_
    Float? probability_loss_speciation
    Float? probability_loss_duplication
    File? constraining_tree_
    Float? prob_presence_inconsistent
    String alignment
    String? tree
  }
  command <<<
    treebest phyml \
      ~{alignment} \
      ~{tree} \
      ~{if defined(build_opt_loglk) then ("-t " +  '"' + build_opt_loglk + '"') else ""} \
      ~{if (input_nucleotide_alignment) then "-n" else ""} \
      ~{if (print_out_statistics) then "-s" else ""} \
      ~{if (mask_lowscoring_segments) then "-N" else ""} \
      ~{if (collapse_alternative_splicing) then "-g" else ""} \
      ~{if defined(number_bootstraps_slow) then ("-b " +  '"' + number_bootstraps_slow + '"') else ""} \
      ~{if defined(write_output_file) then ("-o " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(quality_cutoff_) then ("-F " +  '"' + quality_cutoff_ + '"') else ""} \
      ~{if defined(jc_kp_f) then ("-m " +  '"' + jc_kp_f + '"') else ""} \
      ~{if defined(number_relative_substitution) then ("-c " +  '"' + number_relative_substitution + '"') else ""} \
      ~{if defined(transversiontransition_ratio_estimatinig) then ("-k " +  '"' + transversiontransition_ratio_estimatinig + '"') else ""} \
      ~{if defined(alpha_parameter_gamma) then ("-a " +  '"' + alpha_parameter_gamma + '"') else ""} \
      ~{if defined(proportion_invariable_sites) then ("-i " +  '"' + proportion_invariable_sites + '"') else ""} \
      ~{if (use_species_tree) then "-S" else ""} \
      ~{if defined(species_tree_) then ("-f " +  '"' + species_tree_ + '"') else ""} \
      ~{if defined(duplication_probability_) then ("-d " +  '"' + duplication_probability_ + '"') else ""} \
      ~{if defined(probability_loss_speciation) then ("-l " +  '"' + probability_loss_speciation + '"') else ""} \
      ~{if defined(probability_loss_duplication) then ("-L " +  '"' + probability_loss_duplication + '"') else ""} \
      ~{if defined(constraining_tree_) then ("-C " +  '"' + constraining_tree_ + '"') else ""} \
      ~{if defined(prob_presence_inconsistent) then ("-p " +  '"' + prob_presence_inconsistent + '"') else ""}
  >>>
  parameter_meta {
    build_opt_loglk: "build | opt | loglk | dist                          [build]"
    input_nucleotide_alignment: "the input is a nucleotide alignment"
    print_out_statistics: "print out some statistics"
    mask_lowscoring_segments: "do not mask low-scoring segments"
    collapse_alternative_splicing: "collapse alternative splicing"
    number_bootstraps_slow: "number of bootstraps (slow)                             [0]"
    write_output_file: "write output to file                               [stdout]"
    quality_cutoff_: "quality cut-off                                        [15]"
    jc_kp_f: "nt: JC69 | K2P | F81 | HKY | F84 | TN93 | GTR         [HKY]\\naa: JTT | MtREV | Dayhoff | WAG                       [WAG]"
    number_relative_substitution: "number of relative substitution rate categories         [1]"
    transversiontransition_ratio_estimatinig: "|e  transversion/transition ratio, 'e' for estimatinig      [e]"
    alpha_parameter_gamma: "|e  alpha parameter for Gamma distribution                [1.0]"
    proportion_invariable_sites: "|e  proportion of invariable sites                          [0]"
    use_species_tree: "use a species tree to guide tree building"
    species_tree_: "species tree                         [TreeFam species tree]"
    duplication_probability_: "duplication probability                              [0.15]"
    probability_loss_speciation: "probability of a loss following a speciation         [0.10]"
    probability_loss_duplication: "probability of a loss following a duplication        [0.20]"
    constraining_tree_: "constraining tree                                    [NULL]"
    prob_presence_inconsistent: "prob. of the presence of an inconsistent branch      [0.01]"
    alignment: ""
    tree: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}