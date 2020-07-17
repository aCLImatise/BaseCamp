version 1.0

task KaijuMergeOutputs {
  input {
    File? name_first_input
    File? name_second_input
    File? name_output_file
    String? conflict_resolution_mode
    File? name_nodesdmp_file
    Boolean? use_th_column
    Boolean? enable_verbose_output
    Boolean? enable_debug_output
  }
  command <<<
    kaiju-mergeOutputs \
      ~{if defined(name_first_input) then ("-i " +  '"' + name_first_input + '"') else ""} \
      ~{if defined(name_second_input) then ("-j " +  '"' + name_second_input + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(conflict_resolution_mode) then ("-c " +  '"' + conflict_resolution_mode + '"') else ""} \
      ~{if defined(name_nodesdmp_file) then ("-t " +  '"' + name_nodesdmp_file + '"') else ""} \
      ~{true="-s" false="" use_th_column} \
      ~{true="-v" false="" enable_verbose_output} \
      ~{true="-d" false="" enable_debug_output}
  >>>
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
}