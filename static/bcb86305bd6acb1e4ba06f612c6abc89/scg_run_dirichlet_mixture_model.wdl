version 1.0

task ScgRunDirichletMixtureModel {
  input {
    String? seed
    String? labels_file
    Boolean? config_file
    String single
    String cell
    String genotype_r
    String run_dirichlet_mixture_model
  }
  command <<<
    scg run_dirichlet_mixture_model \
      ~{single} \
      ~{cell} \
      ~{genotype_r} \
      ~{run_dirichlet_mixture_model} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(labels_file) then ("--labels_file " +  '"' + labels_file + '"') else ""} \
      ~{true="--config_file" false="" config_file}
  >>>
  parameter_meta {
    seed: "Set random seed so results can be reproduced. By default a random seed is chosen."
    labels_file: "Path of file with initial labels to use."
    config_file: ""
    single: ""
    cell: ""
    genotype_r: ""
    run_dirichlet_mixture_model: ""
  }
}