version 1.0

task Phast {
  input {
    String all_dists
    String base_evolve
    String choose_lines
    String clean_genes
    String cons_entropy
    String convert_coords
    String display_rate_matrix
    String d_less
    String d_lessp
    String draw_tree
    String eval_predictions
    String exon_i_phy
    String hmm_train
    String hmm_tweak
  }
  command <<<
    phast \
      ~{all_dists} \
      ~{base_evolve} \
      ~{choose_lines} \
      ~{clean_genes} \
      ~{cons_entropy} \
      ~{convert_coords} \
      ~{display_rate_matrix} \
      ~{d_less} \
      ~{d_lessp} \
      ~{draw_tree} \
      ~{eval_predictions} \
      ~{exon_i_phy} \
      ~{hmm_train} \
      ~{hmm_tweak}
  >>>
  parameter_meta {
    all_dists: "hmm_view        phastBias"
    base_evolve: "indelFit        phastCons"
    choose_lines: "indelHistory    phastMotif"
    clean_genes: "maf_parse       phastOdds"
    cons_entropy: "makeHKY         phyloBoot"
    convert_coords: "modFreqs        phyloFit"
    display_rate_matrix: "msa_diff        phyloP"
    d_less: "msa_split       prequel"
    d_lessp: "msa_view        refeature"
    draw_tree: "pbsDecode       stringiphy"
    eval_predictions: "pbsEncode       test"
    exon_i_phy: "pbsScoreMatrix  tree_doctor"
    hmm_train: "pbsTrain        treeGen"
    hmm_tweak: "phast"
  }
  output {
    File out_stdout = stdout()
  }
}