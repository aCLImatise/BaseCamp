version 1.0

task Dpocket {
  input {
    File? prefix_output_file
    Boolean? use_first_default
    Boolean? use_second_definition
    Float? distance_criteria_chooseninterface
  }
  command <<<
    dpocket \
      ~{if defined(prefix_output_file) then ("-o " +  '"' + prefix_output_file + '"') else ""} \
      ~{if (use_first_default) then "-e" else ""} \
      ~{if (use_second_definition) then "-E" else ""} \
      ~{if defined(distance_criteria_chooseninterface) then ("-d " +  '"' + distance_criteria_chooseninterface + '"') else ""}
  >>>
  parameter_meta {
    prefix_output_file: ": Prefix of the output file.               (./dpout_*)"
    use_first_default: ": Use the first protein-ligand explicit\\ninterface definition (default)."
    use_second_definition: ": Use the second protein-ligand explicit\\ninterface definition."
    distance_criteria_chooseninterface: ": Distance criteria for the choosen\\ninterface definition.                          (4.0)"
  }
  output {
    File out_stdout = stdout()
    File out_prefix_output_file = "${in_prefix_output_file}"
  }
}