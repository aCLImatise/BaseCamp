version 1.0

task AcpypeParamsAc {
  input {
    File? config
    File? input_path
    File? output_path_frc_mod
    File? output_path_in_pc_rd
    File? output_path_lib
    File? output_path_prm_top
  }
  command <<<
    acpype_params_ac \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if defined(output_path_frc_mod) then ("--output_path_frcmod " +  '"' + output_path_frc_mod + '"') else ""} \
      ~{if defined(output_path_in_pc_rd) then ("--output_path_inpcrd " +  '"' + output_path_in_pc_rd + '"') else ""} \
      ~{if defined(output_path_lib) then ("--output_path_lib " +  '"' + output_path_lib + '"') else ""} \
      ~{if defined(output_path_prm_top) then ("--output_path_prmtop " +  '"' + output_path_prm_top + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_chemistry:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_path: "Path to the input file. Accepted formats: pdb, mdl, mol2."
    output_path_frc_mod: "Path to the FRCMOD output file. Accepted formats: frcmod."
    output_path_in_pc_rd: "Path to the INPCRD output file. Accepted formats: inpcrd."
    output_path_lib: "Path to the LIB output file. Accepted formats: lib."
    output_path_prm_top: "Path to the PRMTOP output file. Accepted formats: prmtop.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_path_frc_mod = "${in_output_path_frc_mod}"
    File out_output_path_in_pc_rd = "${in_output_path_in_pc_rd}"
    File out_output_path_lib = "${in_output_path_lib}"
    File out_output_path_prm_top = "${in_output_path_prm_top}"
  }
}