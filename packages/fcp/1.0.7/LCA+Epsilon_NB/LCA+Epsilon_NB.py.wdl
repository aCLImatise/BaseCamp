version 1.0

task LCAEpsilonNBpy {
  input {
    String python
    String lca
  }
  command <<<
    LCA_Epsilon_NB_py \
      ~{python} \
      ~{lca}
  >>>
  parameter_meta {
    python: ""
    lca: ""
  }
  output {
    File out_stdout = stdout()
  }
}