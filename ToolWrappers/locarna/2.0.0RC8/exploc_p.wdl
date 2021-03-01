version 1.0

task ExplocP {
  input {
    Boolean? man
    Boolean? verbose
    Boolean? exp_a_rnap_params
    Boolean? loca_rna_params
    File? path_output_folder
    Boolean? output_time
    String loca_rna_dot
    String stored_dot
  }
  command <<<
    exploc_p \
      ~{loca_rna_dot} \
      ~{stored_dot} \
      ~{if (man) then "--man" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (exp_a_rnap_params) then "--exparnap-params" else ""} \
      ~{if (loca_rna_params) then "--locarna-params" else ""} \
      ~{if (path_output_folder) then "--output" else ""} \
      ~{if (output_time) then "--output-time" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "full documentation"
    verbose: "verbose"
    exp_a_rnap_params: "parameters for ExpaRNA-P"
    loca_rna_params: "parameters for LocARNA"
    path_output_folder: "path to output folder"
    output_time: "output individual runtimes"
    loca_rna_dot: "--exparnap-params   parameters for ExpaRNA-P (def=\\\"\\\")."
    stored_dot: "--output-time       print individual times for Preprocessing, ExpaRNA-P"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_folder = "${in_path_output_folder}"
  }
}