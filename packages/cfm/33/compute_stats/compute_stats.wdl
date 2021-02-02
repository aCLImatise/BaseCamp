version 1.0

task Computestats {
  input {
    String input_filename
    String measured_spec_dir
    String predicted_spec_dir
    String num_spectra_per_mol
    String ppm_mass_to_l
    String abs_mass_to_l
    String output_filename
    String cumulative_intensity_thresh
    String apply_cutoffs
    String clean_target_spectra
    String quanti_se_spectra_dec_pl
    String num_groups
  }
  command <<<
    compute_stats \
      ~{input_filename} \
      ~{measured_spec_dir} \
      ~{predicted_spec_dir} \
      ~{num_spectra_per_mol} \
      ~{ppm_mass_to_l} \
      ~{abs_mass_to_l} \
      ~{output_filename} \
      ~{cumulative_intensity_thresh} \
      ~{apply_cutoffs} \
      ~{clean_target_spectra} \
      ~{quanti_se_spectra_dec_pl} \
      ~{num_groups}
  >>>
  parameter_meta {
    input_filename: ""
    measured_spec_dir: ""
    predicted_spec_dir: ""
    num_spectra_per_mol: ""
    ppm_mass_to_l: ""
    abs_mass_to_l: ""
    output_filename: ""
    cumulative_intensity_thresh: ""
    apply_cutoffs: ""
    clean_target_spectra: ""
    quanti_se_spectra_dec_pl: ""
    num_groups: ""
  }
  output {
    File out_stdout = stdout()
  }
}