version 1.0

task Cfmid {
  input {
    String spectrum_file
    String id
    String candidate_file
    String num_highest
    String ppm_mass_to_l
    String abs_mass_to_l
    String prob_thresh_for_prune
    String param_filename
    String config_filename
    String score_type
    String apply_postprocessing
    String output_filename
    String output_msp_or_mgf
  }
  command <<<
    cfm_id \
      ~{spectrum_file} \
      ~{id} \
      ~{candidate_file} \
      ~{num_highest} \
      ~{ppm_mass_to_l} \
      ~{abs_mass_to_l} \
      ~{prob_thresh_for_prune} \
      ~{param_filename} \
      ~{config_filename} \
      ~{score_type} \
      ~{apply_postprocessing} \
      ~{output_filename} \
      ~{output_msp_or_mgf}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    spectrum_file: ""
    id: ""
    candidate_file: ""
    num_highest: ""
    ppm_mass_to_l: ""
    abs_mass_to_l: ""
    prob_thresh_for_prune: ""
    param_filename: ""
    config_filename: ""
    score_type: ""
    apply_postprocessing: ""
    output_filename: ""
    output_msp_or_mgf: ""
  }
  output {
    File out_stdout = stdout()
  }
}