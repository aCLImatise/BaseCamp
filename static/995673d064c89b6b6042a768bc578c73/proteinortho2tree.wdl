version 1.0

task Proteinortho2tree.pl {
  input {
    String ortho_matrix
  }
  command <<<
    proteinortho2tree.pl \
      ~{ortho_matrix}
  >>>
  parameter_meta {
    ortho_matrix: ""
  }
}