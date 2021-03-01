version 1.0

task SolvateIonspy {
  input {
    File? input_pdb_file
    String? topologie_gromacs_format
    Directory? output_directory
    File? output_file_name
    String? distance_solute_box
    Float? ion_concentration_mm
  }
  command <<<
    solvate_ions_py \
      ~{if defined(input_pdb_file) then ("-f " +  '"' + input_pdb_file + '"') else ""} \
      ~{if defined(topologie_gromacs_format) then ("-p " +  '"' + topologie_gromacs_format + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(output_file_name) then ("-n " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(distance_solute_box) then ("-d " +  '"' + distance_solute_box + '"') else ""} \
      ~{if defined(ion_concentration_mm) then ("-C " +  '"' + ion_concentration_mm + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gromacs_py:1.2.1--py_0"
  }
  parameter_meta {
    input_pdb_file: "Input PDB file"
    topologie_gromacs_format: "Topologie in gromacs format .top"
    output_directory: "Output Directory"
    output_file_name: "Output file name"
    distance_solute_box: "Distance between the solute and the box"
    ion_concentration_mm: "Ion concentration (mM), default = 0.15 (150mM)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_output_file_name = "${in_output_file_name}"
  }
}