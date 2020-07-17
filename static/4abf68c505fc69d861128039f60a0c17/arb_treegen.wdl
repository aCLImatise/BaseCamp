version 1.0

task ArbTreegen {
  input {
    String cfg
    String tree
    String seq
  }
  command <<<
    arb_treegen \
      ~{cfg} \
      ~{tree} \
      ~{seq}
  >>>
  parameter_meta {
    cfg: ""
    tree: ""
    seq: ""
  }
}