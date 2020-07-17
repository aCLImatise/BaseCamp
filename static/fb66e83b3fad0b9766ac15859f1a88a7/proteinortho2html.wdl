version 1.0

task Proteinortho2html.pl {
  input {
    String my_project_dot_protein_ortho
  }
  command <<<
    proteinortho2html.pl \
      ~{my_project_dot_protein_ortho}
  >>>
  parameter_meta {
    my_project_dot_protein_ortho: ""
  }
}