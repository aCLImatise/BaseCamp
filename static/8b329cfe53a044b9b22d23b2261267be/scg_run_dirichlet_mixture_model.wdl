version 1.0

task ScgRunDirichletMixtureModel {
  input {
    File? path_yaml_format
    File? lower_bound_file
    File? out_dir
    String? convergence_tolerance
    File? labels_file
    String var_5
  }
  command <<<
    scg run_dirichlet_mixture_model \
      ~{var_5} \
      ~{if defined(path_yaml_format) then ("--config_file " +  '"' + path_yaml_format + '"') else ""} \
      ~{if defined(lower_bound_file) then ("--lower_bound_file " +  '"' + lower_bound_file + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(convergence_tolerance) then ("--convergence_tolerance " +  '"' + convergence_tolerance + '"') else ""} \
      ~{if defined(labels_file) then ("--labels_file " +  '"' + labels_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_yaml_format: "Path to YAML format configuration file."
    lower_bound_file: "Path of file where lower bound will be written."
    out_dir: "Path where output files will be written."
    convergence_tolerance: "Set random seed so results can be reproduced. By\\ndefault a random seed is chosen."
    labels_file: "Path of file with initial labels to use.\\n"
    var_5: "[--lower_bound_file LOWER_BOUND_FILE]"
  }
  output {
    File out_stdout = stdout()
    File out_out_dir = "${in_out_dir}"
  }
}