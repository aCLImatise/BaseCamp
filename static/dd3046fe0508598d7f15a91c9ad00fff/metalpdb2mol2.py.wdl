version 1.0

task Metalpdb2mol2py {
  input {
    File? input_pdb_file
    File? output_mol_file
    String? charge_metal_ion
  }
  command <<<
    metalpdb2mol2_py \
      ~{if defined(input_pdb_file) then ("-i " +  '"' + input_pdb_file + '"') else ""} \
      ~{if defined(output_mol_file) then ("-o " +  '"' + output_mol_file + '"') else ""} \
      ~{if defined(charge_metal_ion) then ("-c " +  '"' + charge_metal_ion + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_pdb_file: "Input PDB file"
    output_mol_file: "Output mol2 file"
    charge_metal_ion: "Charge of the metal ion"
  }
  output {
    File out_stdout = stdout()
    File out_output_mol_file = "${in_output_mol_file}"
  }
}