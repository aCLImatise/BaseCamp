version 1.0

task RsatMatrixquality {
  input {
    Int? perm
    Boolean? h_dot
    String? plot
    String matrix_quality
    String interest_dot
    String set_dot
    String approach_may_however
    String computed_dot
    String beware_score_distribution
    String theory
    String matrix_sites
    String matrix_sites_cv
    String sequences
    String pssm
    String one_dot
    String sequences_dot
    String steps_dot
    String convert_background_model_dot
    String sequence_type
    String statistics_dot
  }
  command <<<
    rsat matrix_quality \
      ~{matrix_quality} \
      ~{interest_dot} \
      ~{set_dot} \
      ~{approach_may_however} \
      ~{computed_dot} \
      ~{beware_score_distribution} \
      ~{theory} \
      ~{matrix_sites} \
      ~{matrix_sites_cv} \
      ~{sequences} \
      ~{pssm} \
      ~{one_dot} \
      ~{sequences_dot} \
      ~{steps_dot} \
      ~{convert_background_model_dot} \
      ~{sequence_type} \
      ~{statistics_dot} \
      ~{if defined(perm) then ("-perm " +  '"' + perm + '"') else ""} \
      ~{if (h_dot) then "-h." else ""} \
      ~{if defined(plot) then ("-plot " +  '"' + plot + '"') else ""}
  >>>
  parameter_meta {
    perm: "0 -bgfile my_background.txt \\\\n-o my_matrix_quality"
    h_dot: "Multiple image formats can be specified either by using iteratively\\nthe option, or by separating them by commas.\\nExample: -img_format png,pdf"
    plot: ""
    matrix_quality: "[1mDESCRIPTION[0m"
    interest_dot: "[1mMatrix sites[0m"
    set_dot: "If the left-out sequence has one or more \\\"twin\\\" (identical site) in the"
    approach_may_however: "This approach may however pose problem in the specific case of"
    computed_dot: "[1mComparing the scores of the matrix sites to the theoretical"
    beware_score_distribution: "Beware: the score distribution of matrix sites is fake. Indeed, those"
    theory: "The theoretical distribution of scores, computing according to the\\nbackground model;"
    matrix_sites: "The score distribution of the matrix sites (which is biased by the\\nfact that these sites were used to build the matrix)."
    matrix_sites_cv: "This is the distribution of scores for the matrix sites, evaluated\\nwith the LOO procedure."
    sequences: "pattern matching"
    pssm: "evaluation"
    one_dot: "[1m-top top_matrices[0m"
    sequences_dot: "[1m-kfold k[0m"
    steps_dot: "[1m-nograph[0m"
    convert_background_model_dot: "[1m-decimals #[0m"
    sequence_type: "Calculate the OCC proba."
    statistics_dot: "If the option '-bgfile' is specified, the specified background model"
  }
  output {
    File out_stdout = stdout()
  }
}