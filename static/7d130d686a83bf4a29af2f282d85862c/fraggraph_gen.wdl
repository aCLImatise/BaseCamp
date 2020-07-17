version 1.0

task FraggraphGen {
  input {
    String smiles_or_inch_i_string
    Int max_depth
  }
  command <<<
    fraggraph-gen \
      ~{smiles_or_inch_i_string} \
      ~{max_depth}
  >>>
  parameter_meta {
    smiles_or_inch_i_string: ""
    max_depth: ""
  }
}