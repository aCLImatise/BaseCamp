version 1.0

task KaijumergeOutputs {
  input {
    File? name_first_input
    File? name_second_input
    File? name_output_file
    Int? conflict_resolution_mode
    File? name_nodesdmp_file
    Boolean? use_th_column
    Boolean? enable_verbose_output
    Boolean? enable_debug_output
  }
  command <<<
    kaiju_mergeOutputs \
      ~{if defined(name_first_input) then ("-i " +  '"' + name_first_input + '"') else ""} \
      ~{if defined(name_second_input) then ("-j " +  '"' + name_second_input + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(conflict_resolution_mode) then ("-c " +  '"' + conflict_resolution_mode + '"') else ""} \
      ~{if defined(name_nodesdmp_file) then ("-t " +  '"' + name_nodesdmp_file + '"') else ""} \
      ~{if (use_th_column) then "-s" else ""} \
      ~{if (enable_verbose_output) then "-v" else ""} \
      ~{if (enable_debug_output) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_first_input: "Name of first input file"
    name_second_input: "Name of second input file"
    name_output_file: "Name of output file."
    conflict_resolution_mode: "Conflict resolution mode, must be 1, 2,  lca, or lowest (default: lca)"
    name_nodesdmp_file: "Name of nodes.dmp file, only required when -c is set to lca"
    use_th_column: "Use 4th column with classification score to give precedence to taxon with better score."
    enable_verbose_output: "Enable verbose output, which will print a summary in the end."
    enable_debug_output: "Enable debug output."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}