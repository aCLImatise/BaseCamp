version 1.0

task AcpypeParamsCns {
  input {
    String? config
    String? input_path
    String? output_path_par
    String? output_path_inp
    String? output_path_top
  }
  command <<<
    acpype_params_cns \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if defined(output_path_par) then ("--output_path_par " +  '"' + output_path_par + '"') else ""} \
      ~{if defined(output_path_inp) then ("--output_path_inp " +  '"' + output_path_inp + '"') else ""} \
      ~{if defined(output_path_top) then ("--output_path_top " +  '"' + output_path_top + '"') else ""}
  >>>
  parameter_meta {
    config: "Configuration file"
    input_path: "Path to the input file. Accepted formats: pdb, mdl, mol2."
    output_path_par: "Path to the PAR output file. Accepted formats: par."
    output_path_inp: "Path to the INP output file. Accepted formats: inp."
    output_path_top: "Path to the TOP output file. Accepted formats: top."
  }
}