version 1.0

task Qpreroot {
  input {
    File? use_parameters_file
    String? use_nam_root
    String? use_nam_graph
    String? use_nam_out
    String? use_nam_dot
    String? use_nam_script
    String? delete_population_nam
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
      ~{if defined(use_nam_graph) then ("-g " +  '"' + use_nam_graph + '"') else ""} \
      ~{if defined(use_nam_out) then ("-o " +  '"' + use_nam_out + '"') else ""} \
      ~{if defined(use_nam_dot) then ("-d " +  '"' + use_nam_dot + '"') else ""} \
      ~{if defined(use_nam_script) then ("-s " +  '"' + use_nam_script + '"') else ""} \
      ~{if defined(delete_population_nam) then ("-x " +  '"' + delete_population_nam + '"') else ""} \
      ~{true="-H" false="" toggle_hash_calculation} \
      ~{true="-v" false="" print_version_exit} \
      ~{true="-V" false="" toggle_verbose_mode} \
      ~{true="-f" false="" new_output_format}
  >>>
  parameter_meta {
    use_parameters_file: "... use parameters from <file> ."
    use_nam_root: "... use <nam> as root name."
    use_nam_graph: "... use <nam> as graph name."
    use_nam_out: "... use <nam> as out graph name."
    use_nam_dot: "... use <nam> as dot graph name."
    use_nam_script: "... use <nam> as script name."
    delete_population_nam: "... delete population <nam>."
    toggle_hash_calculation: "... toggle hash calculation ON."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    new_output_format: "... new output format (edge not ledge etc."
    file: ""
  }
}