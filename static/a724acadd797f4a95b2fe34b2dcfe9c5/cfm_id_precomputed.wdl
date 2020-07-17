version 1.0

task CfmIdPrecomputed {
  input {
    String cfm_id_dot_exe
    String spectrum_file
    String id
    String candidate_file
    String num_highest
    String ppm_mass_to_l
    String abs_mass_to_l
    String score_type
    String output_filename
  }
  command <<<
    cfm-id-precomputed \
      ~{cfm_id_dot_exe} \
      ~{spectrum_file} \
      ~{id} \
      ~{candidate_file} \
      ~{num_highest} \
      ~{ppm_mass_to_l} \
      ~{abs_mass_to_l} \
      ~{score_type} \
      ~{output_filename}
  >>>
  parameter_meta {
    cfm_id_dot_exe: ""
    spectrum_file: ""
    id: ""
    candidate_file: ""
    num_highest: ""
    ppm_mass_to_l: ""
    abs_mass_to_l: ""
    score_type: ""
    output_filename: ""
  }
}