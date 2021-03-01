version 1.0

task ScgRunDoubletModel {
  input {
    File? config_file
    File? lower_bound_file
    File? out_dir
    String? convergence_tolerance
    File? labels_file
    Boolean? use_position_specific_error_rate
    File? samples_file
    String single
    String cell
    String genotype_r
    String run_doublet_model
  }
  command <<<
    scg run_doublet_model \
      ~{single} \
      ~{cell} \
      ~{genotype_r} \
      ~{run_doublet_model} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(lower_bound_file) then ("--lower_bound_file " +  '"' + lower_bound_file + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(convergence_tolerance) then ("--convergence_tolerance " +  '"' + convergence_tolerance + '"') else ""} \
      ~{if defined(labels_file) then ("--labels_file " +  '"' + labels_file + '"') else ""} \
      ~{if (use_position_specific_error_rate) then "--use_position_specific_error_rate" else ""} \
      ~{if defined(samples_file) then ("--samples_file " +  '"' + samples_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config_file: "Path to YAML format configuration file."
    lower_bound_file: "Path of file where lower bound will be written."
    out_dir: "Path where output files will be written."
    convergence_tolerance: "Set random seed so results can be reproduced. By\\ndefault a random seed is chosen."
    labels_file: "Path of file with initial labels to use."
    use_position_specific_error_rate: "If an error rate will be estimated for each position."
    samples_file: "Path mapping cells to samples. If set each sample will\\nhave a separate mixing proportion."
    single: ""
    cell: ""
    genotype_r: ""
    run_doublet_model: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_dir = "${in_out_dir}"
  }
}