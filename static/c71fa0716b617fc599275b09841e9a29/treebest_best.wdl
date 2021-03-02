version 1.0

task TreebestBest {
  input {
    Boolean? skip_phyml
    Boolean? ignore_prob_gene
    Boolean? apply_constraint_phyml
    File? constraining_tree_
    File? species_tree_
    Boolean? discard_species_appear
    Boolean? skip_mmerge_step
    Boolean? output_debug_information
    Boolean? suppress_part_phyml
    String? prefix_intermediate_trees
    File? output_tree_
    Boolean? only_build_tree
    Boolean? collapse_alternative_forms
    Boolean? mask_lowscoring_segments
    Int? quality_cutoff_
    Int? number_rate_categories
    Float? tvts_ratio_kappa
    Float? alpha_parameter_gamma
    Float? duplication_probability_
    Float? probability_loss_speciation
    Float? probability_following_duplication
    Float? prob_presence_inconsistent
  }
  command <<<
    treebest best \
      ~{if (skip_phyml) then "-P" else ""} \
      ~{if (ignore_prob_gene) then "-S" else ""} \
      ~{if (apply_constraint_phyml) then "-A" else ""} \
      ~{if defined(constraining_tree_) then ("-C " +  '"' + constraining_tree_ + '"') else ""} \
      ~{if defined(species_tree_) then ("-f " +  '"' + species_tree_ + '"') else ""} \
      ~{if (discard_species_appear) then "-r" else ""} \
      ~{if (skip_mmerge_step) then "-I" else ""} \
      ~{if (output_debug_information) then "-D" else ""} \
      ~{if (suppress_part_phyml) then "-q" else ""} \
      ~{if defined(prefix_intermediate_trees) then ("-p " +  '"' + prefix_intermediate_trees + '"') else ""} \
      ~{if defined(output_tree_) then ("-o " +  '"' + output_tree_ + '"') else ""} \
      ~{if (only_build_tree) then "-s" else ""} \
      ~{if (collapse_alternative_forms) then "-g" else ""} \
      ~{if (mask_lowscoring_segments) then "-N" else ""} \
      ~{if defined(quality_cutoff_) then ("-F " +  '"' + quality_cutoff_ + '"') else ""} \
      ~{if defined(number_rate_categories) then ("-c " +  '"' + number_rate_categories + '"') else ""} \
      ~{if defined(tvts_ratio_kappa) then ("-k " +  '"' + tvts_ratio_kappa + '"') else ""} \
      ~{if defined(alpha_parameter_gamma) then ("-a " +  '"' + alpha_parameter_gamma + '"') else ""} \
      ~{if defined(duplication_probability_) then ("-d " +  '"' + duplication_probability_ + '"') else ""} \
      ~{if defined(probability_loss_speciation) then ("-l " +  '"' + probability_loss_speciation + '"') else ""} \
      ~{if defined(probability_following_duplication) then ("-L " +  '"' + probability_following_duplication + '"') else ""} \
      ~{if defined(prob_presence_inconsistent) then ("-b " +  '"' + prob_presence_inconsistent + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    skip_phyml: "skip PHYML"
    ignore_prob_gene: "ignore the prob. of gene evolution (NOT recommended)"
    apply_constraint_phyml: "apply constraint to PHYML"
    constraining_tree_: "constraining tree                               [null]"
    species_tree_: "species tree                                 [default]"
    discard_species_appear: "discard species that do not appear at all"
    skip_mmerge_step: "skip the mmerge step and use the constraining tree instead"
    output_debug_information: "output some debug information"
    suppress_part_phyml: "suppress part of PHYML warnings"
    prefix_intermediate_trees: "prefix of intermediate trees                    [null]"
    output_tree_: "output tree                                     [null]"
    only_build_tree: "only build tree for genes from sequenced species"
    collapse_alternative_forms: "collapse alternative splicing forms"
    mask_lowscoring_segments: "do not mask low-scoring segments"
    quality_cutoff_: "quality cut-off                                   [11]"
    number_rate_categories: "number of rate categories for PHYML-HKY            [2]"
    tvts_ratio_kappa: "|e  tv/ts ratio (kappa), 'e' for estimatinig           [e]"
    alpha_parameter_gamma: "|e  alpha parameter for Gamma distribution           [1.0]"
    duplication_probability_: "duplication probability                         [0.15]"
    probability_loss_speciation: "probability of a loss following a speciation    [0.10]"
    probability_following_duplication: "probability of a loss following a duplication   [0.20]"
    prob_presence_inconsistent: "prob. of the presence of an inconsistent branch [0.01]"
  }
  output {
    File out_stdout = stdout()
  }
}