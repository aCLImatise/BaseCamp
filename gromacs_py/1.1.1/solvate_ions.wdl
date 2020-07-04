version 1.0

task SolvateIons.py {
  input {
    String? input_pdb_file
    String? topologie_gromacs_format
    String? output_directory
    String? output_file_name
    String? distance_solute_box
    String? concentration_mm_default
  }
  command <<<
    solvate_ions.py \
      ~{if defined(input_pdb_file) then ("-f " +  '"' + input_pdb_file + '"') else ""} \
      ~{if defined(topologie_gromacs_format) then ("-p " +  '"' + topologie_gromacs_format + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(output_file_name) then ("-n " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(distance_solute_box) then ("-d " +  '"' + distance_solute_box + '"') else ""} \
      ~{if defined(concentration_mm_default) then ("-C " +  '"' + concentration_mm_default + '"') else ""}
  >>>
  parameter_meta {
    input_pdb_file: "Input PDB file"
    topologie_gromacs_format: "Topologie in gromacs format .top"
    output_directory: "Output Directory"
    output_file_name: "Output file name"
    distance_solute_box: "Distance between the solute and the box"
    concentration_mm_default: "Ion concentration (mM), default = 0.15 (150mM)"
  }
}