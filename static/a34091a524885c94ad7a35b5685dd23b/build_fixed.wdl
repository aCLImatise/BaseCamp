version 1.0

task Buildfixed {
  input {
    Int? set_depth_model
    File? train_using_strings
    Int? nk_permutation_describing
    Int? specify_special_position
    Boolean? output_model_text
    Int? set_verbose_level
    String? options
  }
  command <<<
    build_fixed \
      ~{options} \
      ~{if defined(set_depth_model) then ("-d " +  '"' + set_depth_model + '"') else ""} \
      ~{if defined(train_using_strings) then ("-i " +  '"' + train_using_strings + '"') else ""} \
      ~{if defined(nk_permutation_describing) then ("-p " +  '"' + nk_permutation_describing + '"') else ""} \
      ~{if defined(specify_special_position) then ("-s " +  '"' + specify_special_position + '"') else ""} \
      ~{if (output_model_text) then "-t" else ""} \
      ~{if defined(set_verbose_level) then ("-v " +  '"' + set_verbose_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_depth_model: "Set depth of model to <num>"
    train_using_strings: "Train using strings specified by subscripts in file\\nnamed <fn>"
    nk_permutation_describing: ",n2,...,nk  Permutation describing re-ordering of\\ncharacter positions of input string to build model"
    specify_special_position: "Specify special position in model"
    output_model_text: "Output model as text (for debugging only)"
    set_verbose_level: "Set verbose level; higher is more diagnostic printouts"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}