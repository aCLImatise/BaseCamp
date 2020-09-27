version 1.0

task Proteinortho2treepl {
  input {
    String ortho_matrix
  }
  command <<<
    proteinortho2tree_pl \
      ~{ortho_matrix}
  >>>
  parameter_meta {
    ortho_matrix: ""
  }
  output {
    File out_stdout = stdout()
  }
}