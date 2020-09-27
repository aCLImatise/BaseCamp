version 1.0

task Fraggraphgen {
  input {
    String smiles_or_inch_i_string
    String max_depth
  }
  command <<<
    fraggraph_gen \
      ~{smiles_or_inch_i_string} \
      ~{max_depth}
  >>>
  parameter_meta {
    smiles_or_inch_i_string: ""
    max_depth: ""
  }
  output {
    File out_stdout = stdout()
  }
}