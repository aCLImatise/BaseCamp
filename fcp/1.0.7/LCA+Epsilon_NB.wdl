version 1.0

task LCA+EpsilonNB.py {
  input {
    String python
    String lca
  }
  command <<<
    LCA+Epsilon-NB.py \
      ~{python} \
      ~{lca}
  >>>
  parameter_meta {
    python: ""
    lca: ""
  }
}