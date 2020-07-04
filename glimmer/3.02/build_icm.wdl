version 1.0

task BuildIcm {
  input {
    String? set_depth_model
    Boolean? ignore_input_strings
    String? set_period_model
    Boolean? use_reverse_build
    Boolean? output_model_text
    String? set_level_higher
    String? set_length_num
    String output_file
  }
  command <<<
    build-icm \
      ~{output_file} \
      ~{if defined(set_depth_model) then ("-d " +  '"' + set_depth_model + '"') else ""} \
      ~{true="-F" false="" ignore_input_strings} \
      ~{if defined(set_period_model) then ("-p " +  '"' + set_period_model + '"') else ""} \
      ~{true="-r" false="" use_reverse_build} \
      ~{true="-t" false="" output_model_text} \
      ~{if defined(set_level_higher) then ("-v " +  '"' + set_level_higher + '"') else ""} \
      ~{if defined(set_length_num) then ("-w " +  '"' + set_length_num + '"') else ""}
  >>>
  parameter_meta {
    set_depth_model: "Set depth of model to <num>"
    ignore_input_strings: "Ignore input strings with in-frame stop codons"
    set_period_model: "Set period of model to <num>"
    use_reverse_build: "Use the reverse of input strings to build the model"
    output_model_text: "Output model as text (for debugging only)"
    set_level_higher: "Set verbose level; higher is more diagnostic printouts"
    set_length_num: "Set length of model window to <num>"
    output_file: ""
  }
}