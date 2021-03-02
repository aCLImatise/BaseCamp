version 1.0

task Buildicm {
  input {
    Int? set_depth_model
    Boolean? ignore_input_strings
    Int? set_period_model
    Boolean? use_reverse_build
    Boolean? output_model_text
    Int? set_verbose_level
    Int? set_length_model
    String output_file
  }
  command <<<
    build_icm \
      ~{output_file} \
      ~{if defined(set_depth_model) then ("-d " +  '"' + set_depth_model + '"') else ""} \
      ~{if (ignore_input_strings) then "-F" else ""} \
      ~{if defined(set_period_model) then ("-p " +  '"' + set_period_model + '"') else ""} \
      ~{if (use_reverse_build) then "-r" else ""} \
      ~{if (output_model_text) then "-t" else ""} \
      ~{if defined(set_verbose_level) then ("-v " +  '"' + set_verbose_level + '"') else ""} \
      ~{if defined(set_length_model) then ("-w " +  '"' + set_length_model + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_depth_model: "Set depth of model to <num>"
    ignore_input_strings: "Ignore input strings with in-frame stop codons"
    set_period_model: "Set period of model to <num>"
    use_reverse_build: "Use the reverse of input strings to build the model"
    output_model_text: "Output model as text (for debugging only)"
    set_verbose_level: "Set verbose level; higher is more diagnostic printouts"
    set_length_model: "Set length of model window to <num>\\n"
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}