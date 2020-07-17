version 1.0

task ExplocP {
  input {
    Boolean? man
    Boolean? verbose
    Boolean? exp_a_rnap_params
    Boolean? loca_rna_params
    Boolean? path_output_folder
    Boolean? output_time
    String input_file_one
    String input_file_two
  }
  command <<<
    exploc_p \
      ~{input_file_one} \
      ~{input_file_two} \
      ~{true="--man" false="" man} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--exparnap-params" false="" exp_a_rnap_params} \
      ~{true="--locarna-params" false="" loca_rna_params} \
      ~{true="--output" false="" path_output_folder} \
      ~{true="--output-time" false="" output_time}
  >>>
  parameter_meta {
    man: "full documentation"
    verbose: "verbose"
    exp_a_rnap_params: "parameters for ExpaRNA-P"
    loca_rna_params: "parameters for LocARNA"
    path_output_folder: "path to output folder"
    output_time: "output individual runtimes"
    input_file_one: ""
    input_file_two: ""
  }
}