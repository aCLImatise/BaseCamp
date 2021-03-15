version 1.0

task LeapSolvate {
  input {
    File? config
    File? input_pdb_path
    File? input_lib_path
    File? input_frc_mod_path
    File? input_params_path
    File? input_source_path
    File? output_pdb_path
    File? output_top_path
    File? output_crd_path
  }
  command <<<
    leap_solvate \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_pdb_path) then ("--input_pdb_path " +  '"' + input_pdb_path + '"') else ""} \
      ~{if defined(input_lib_path) then ("--input_lib_path " +  '"' + input_lib_path + '"') else ""} \
      ~{if defined(input_frc_mod_path) then ("--input_frcmod_path " +  '"' + input_frc_mod_path + '"') else ""} \
      ~{if defined(input_params_path) then ("--input_params_path " +  '"' + input_params_path + '"') else ""} \
      ~{if defined(input_source_path) then ("--input_source_path " +  '"' + input_source_path + '"') else ""} \
      ~{if defined(output_pdb_path) then ("--output_pdb_path " +  '"' + output_pdb_path + '"') else ""} \
      ~{if defined(output_top_path) then ("--output_top_path " +  '"' + output_top_path + '"') else ""} \
      ~{if defined(output_crd_path) then ("--output_crd_path " +  '"' + output_crd_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_amber:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_pdb_path: "Input 3D structure PDB file. Accepted formats: pdb."
    input_lib_path: "Input ligand library parameters file. Accepted formats: lib, zip."
    input_frc_mod_path: "Input ligand frcmod parameters file. Accepted formats: frcmod, zip."
    input_params_path: "Additional leap parameter files to load with loadAmberParams Leap command. Accepted formats: leapin, in, txt, zip."
    input_source_path: "Additional leap command files to load with source Leap command. Accepted formats: leapin, in, txt, zip."
    output_pdb_path: "Output 3D structure PDB file matching the topology file. Accepted formats: pdb."
    output_top_path: "Output topology file (AMBER ParmTop). Accepted formats: top."
    output_crd_path: "Output coordinates file (AMBER crd). Accepted formats: crd.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_path = "${in_output_pdb_path}"
    File out_output_top_path = "${in_output_top_path}"
    File out_output_crd_path = "${in_output_crd_path}"
  }
}