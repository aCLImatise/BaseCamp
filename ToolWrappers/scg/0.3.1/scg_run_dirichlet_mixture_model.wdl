version 1.0

task ScgRunDirichletMixtureModel {
  input {
    String? seed
    Boolean? var_1
    String var_2
  }
  command <<<
    scg run_dirichlet_mixture_model \
      ~{var_2} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (var_1) then "--config_file" else ""}
  >>>
  parameter_meta {
    seed: "Set random seed so results can be reproduced. By"
    var_1: ""
    var_2: "[--lower_bound_file LOWER_BOUND_FILE]"
  }
  output {
    File out_stdout = stdout()
  }
}