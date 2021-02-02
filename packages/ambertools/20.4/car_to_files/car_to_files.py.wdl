version 1.0

task CarToFilespy {
  input {
    File? input_file_name
    File? output_mol_file
    File? output_pdb_file
    String? residue_name
  }
  command <<<
    car_to_files_py \
      ~{if defined(input_file_name) then ("-i " +  '"' + input_file_name + '"') else ""} \
      ~{if defined(output_mol_file) then ("-m " +  '"' + output_mol_file + '"') else ""} \
      ~{if defined(output_pdb_file) then ("-p " +  '"' + output_pdb_file + '"') else ""} \
      ~{if defined(residue_name) then ("-r " +  '"' + residue_name + '"') else ""}
  >>>
  parameter_meta {
    input_file_name: "Input file name"
    output_mol_file: "Output mol2 file name"
    output_pdb_file: "Output PDB file name"
    residue_name: "Residue name"
  }
  output {
    File out_stdout = stdout()
    File out_output_mol_file = "${in_output_mol_file}"
    File out_output_pdb_file = "${in_output_pdb_file}"
  }
}