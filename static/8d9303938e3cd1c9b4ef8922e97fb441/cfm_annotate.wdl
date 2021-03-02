version 1.0

task Cfmannotate {
  input {
    String smiles_or_inch_i
    String spectrum_file
    String id
    String ppm_mass_to_l
    String abs_mass_to_l
    String param_filename
    String config_filename
    String output_filename
  }
  command <<<
    cfm_annotate \
      ~{smiles_or_inch_i} \
      ~{spectrum_file} \
      ~{id} \
      ~{ppm_mass_to_l} \
      ~{abs_mass_to_l} \
      ~{param_filename} \
      ~{config_filename} \
      ~{output_filename}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    smiles_or_inch_i: ""
    spectrum_file: ""
    id: ""
    ppm_mass_to_l: ""
    abs_mass_to_l: ""
    param_filename: ""
    config_filename: ""
    output_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}