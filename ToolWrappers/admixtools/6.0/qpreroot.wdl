version 1.0

task Qpreroot {
  input {
    File? use_parameters_file
    String? use_nam_root
    String? _use_nam_as_graph_name
    String? _use_nam_as_out_graph_name
    String? use_nam_dot
    String? use_nam_script
    String? _delete_population
    Boolean? toggle_hash_calculation
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    Boolean? new_output_format
    File file
  }
  command <<<
    qpreroot \
      ~{file} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if defined(use_nam_root) then ("-r " +  '"' + use_nam_root + '"') else ""} \
      ~{if defined(_use_nam_as_graph_name) then ("-g " +  '"' + _use_nam_as_graph_name + '"') else ""} \
      ~{if defined(_use_nam_as_out_graph_name) then ("-o " +  '"' + _use_nam_as_out_graph_name + '"') else ""} \
      ~{if defined(use_nam_dot) then ("-d " +  '"' + use_nam_dot + '"') else ""} \
      ~{if defined(use_nam_script) then ("-s " +  '"' + use_nam_script + '"') else ""} \
      ~{if defined(_delete_population) then ("-x " +  '"' + _delete_population + '"') else ""} \
      ~{if (toggle_hash_calculation) then "-H" else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (toggle_verbose_mode) then "-V" else ""} \
      ~{if (new_output_format) then "-f" else ""}
  >>>
  parameter_meta {
    use_parameters_file: "... use parameters from <file> ."
    use_nam_root: "... use <nam> as root name."
    _use_nam_as_graph_name: "... use <nam> as graph name."
    _use_nam_as_out_graph_name: "... use <nam> as out graph name."
    use_nam_dot: "... use <nam> as dot graph name."
    use_nam_script: "... use <nam> as script name."
    _delete_population: "... delete population <nam>."
    toggle_hash_calculation: "... toggle hash calculation ON."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    new_output_format: "... new output format (edge not ledge etc."
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}