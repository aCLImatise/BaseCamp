version 1.0

task QpGraph {
  input {
    String? use_val_z
    String? use_val_seed
    File? use_parameters_file
    String? use_nam_graph_name
    String? use_nam_au
    String? use_nam_graph_dot
    String? use_nam_oulier
    String? use_val_lambda
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
  }
  command <<<
    qpGraph \
      ~{if defined(use_val_z) then ("-z " +  '"' + use_val_z + '"') else ""} \
      ~{if defined(use_val_seed) then ("-s " +  '"' + use_val_seed + '"') else ""} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if defined(use_nam_graph_name) then ("-g " +  '"' + use_nam_graph_name + '"') else ""} \
      ~{if defined(use_nam_au) then ("-o " +  '"' + use_nam_au + '"') else ""} \
      ~{if defined(use_nam_graph_dot) then ("-d " +  '"' + use_nam_graph_dot + '"') else ""} \
      ~{if defined(use_nam_oulier) then ("-x " +  '"' + use_nam_oulier + '"') else ""} \
      ~{if defined(use_val_lambda) then ("-l " +  '"' + use_val_lambda + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (toggle_verbose_mode) then "-V" else ""}
  >>>
  parameter_meta {
    use_val_z: "... use <val> as Z threshold."
    use_val_seed: "... use <val> seed."
    use_parameters_file: "... use parameters from <file> ."
    use_nam_graph_name: "... use <nam> as graph name."
    use_nam_au: "... use <nam> au out graph."
    use_nam_graph_dot: "... use <nam> for graph dot name."
    use_nam_oulier: "... use <nam> as oulier name."
    use_val_lambda: "... use <val> as lambda scale value."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
  }
  output {
    File out_stdout = stdout()
  }
}