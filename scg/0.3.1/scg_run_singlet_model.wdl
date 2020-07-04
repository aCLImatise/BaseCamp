version 1.0

task ScgRunSingletModel {
  input {
    String? seed
    String? labels_file
    Boolean? use_position_specific_error_rate
    String? samples_file
    String? config_file
    String single
    String cell
    String genotype_r
    String run_singlet_model
  }
  command <<<
    scg run_singlet_model \
      ~{single} \
      ~{cell} \
      ~{genotype_r} \
      ~{run_singlet_model} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(labels_file) then ("--labels_file " +  '"' + labels_file + '"') else ""} \
      ~{true="--use_position_specific_error_rate" false="" use_position_specific_error_rate} \
      ~{if defined(samples_file) then ("--samples_file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""}
  >>>
  parameter_meta {
    seed: "Set random seed so results can be reproduced. By default a random seed is chosen."
    labels_file: "Path of file with initial labels to use."
    use_position_specific_error_rate: "If an error rate will be estimated for each position."
    samples_file: "Path mapping cells to samples. If set each sample will have a separate mixing proportion."
    config_file: ""
    single: ""
    cell: ""
    genotype_r: ""
    run_singlet_model: ""
  }
}