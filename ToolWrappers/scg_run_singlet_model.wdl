version 1.0

task ScgRunSingletModel {
  input {
    String? seed
    File? config_file
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
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""}
  >>>
  parameter_meta {
    seed: "Set random seed so results can be reproduced. By"
    config_file: ""
    single: ""
    cell: ""
    genotype_r: ""
    run_singlet_model: ""
  }
  output {
    File out_stdout = stdout()
  }
}