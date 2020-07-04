version 1.0

task BuildFixed {
  input {
    String? set_depth_model
    String? train_using_strings
    String? n_permutation_describing
    String? specify_special_position
    Boolean? output_model_text
    String? set_level_higher
  }
  command <<<
    build-fixed \
      ~{if defined(set_depth_model) then ("-d " +  '"' + set_depth_model + '"') else ""} \
      ~{if defined(train_using_strings) then ("-i " +  '"' + train_using_strings + '"') else ""} \
      ~{if defined(n_permutation_describing) then ("-p " +  '"' + n_permutation_describing + '"') else ""} \
      ~{if defined(specify_special_position) then ("-s " +  '"' + specify_special_position + '"') else ""} \
      ~{true="-t" false="" output_model_text} \
      ~{if defined(set_level_higher) then ("-v " +  '"' + set_level_higher + '"') else ""}
  >>>
  parameter_meta {
    set_depth_model: "Set depth of model to <num>"
    train_using_strings: "Train using strings specified by subscripts in file named <fn>"
    n_permutation_describing: ",n2,...,nk  Permutation describing re-ordering of character positions of input string to build model"
    specify_special_position: "Specify special position in model"
    output_model_text: "Output model as text (for debugging only)"
    set_level_higher: "Set verbose level; higher is more diagnostic printouts"
  }
}