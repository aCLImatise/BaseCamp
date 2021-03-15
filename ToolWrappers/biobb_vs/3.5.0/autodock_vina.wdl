version 1.0

task AutodockVina {
  input {
    File? config
    File? output_log_path
    File? input_ligand_pdb_qt_path
    File? input_receptor_pdb_qt_path
    File? input_box_path
    File? output_pdb_qt_path
  }
  command <<<
    autodock_vina \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_log_path) then ("--output_log_path " +  '"' + output_log_path + '"') else ""} \
      ~{if defined(input_ligand_pdb_qt_path) then ("--input_ligand_pdbqt_path " +  '"' + input_ligand_pdb_qt_path + '"') else ""} \
      ~{if defined(input_receptor_pdb_qt_path) then ("--input_receptor_pdbqt_path " +  '"' + input_receptor_pdb_qt_path + '"') else ""} \
      ~{if defined(input_box_path) then ("--input_box_path " +  '"' + input_box_path + '"') else ""} \
      ~{if defined(output_pdb_qt_path) then ("--output_pdbqt_path " +  '"' + output_pdb_qt_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_vs:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    output_log_path: "Path to the log file. Accepted formats: log."
    input_ligand_pdb_qt_path: "Path to the input PDBQT ligand. Accepted formats: pdbqt."
    input_receptor_pdb_qt_path: "Path to the input PDBQT receptor. Accepted formats: pdbqt."
    input_box_path: "Path to the PDB containig the residues belonging to the binding site. Accepted formats: pdb."
    output_pdb_qt_path: "Path to the output PDBQT file. Accepted formats: pdbqt.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_log_path = "${in_output_log_path}"
    File out_output_pdb_qt_path = "${in_output_pdb_qt_path}"
  }
}