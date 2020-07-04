version 1.0

task EvoFoldV2 {
  input {
    Boolean? arg_path_evofold
    Boolean? arg_output_predictions
    Boolean? arg_name_use
    String? decimals
    Boolean? arg_output_file
    String ev_of_old
    String alg_do_tama
    String tree_dot_neiw_ck
  }
  command <<<
    EvoFoldV2 \
      ~{ev_of_old} \
      ~{alg_do_tama} \
      ~{tree_dot_neiw_ck} \
      ~{true="-c" false="" arg_path_evofold} \
      ~{true="-f" false="" arg_output_predictions} \
      ~{true="-n" false="" arg_name_use} \
      ~{if defined(decimals) then ("--decimals " +  '"' + decimals + '"') else ""} \
      ~{true="-o" false="" arg_output_file}
  >>>
  parameter_meta {
    arg_path_evofold: "[ --configFilePath ] arg (=./) Path to EvoFold configuration files."
    arg_output_predictions: "[ --completeFile ] arg         Output complete structure predictions for  each input element in addition to the  sub-structures."
    arg_name_use: "[ --annoName ] arg             Name of annotation to use (see annoMap file for definition of annotation symbols. Note  that '*' can be used as wildcard.  Specifying annotation is useful for adding  constraints on the predicted structure."
    decimals: "(=5)               Output precision of score."
    arg_output_file: "[ --outputFile ] arg (=-)      Output file (default is stdout)."
    ev_of_old: ""
    alg_do_tama: ""
    tree_dot_neiw_ck: ""
  }
}