version 1.0

task Proteinortho2htmlpl {
  input {
    String my_project_dot_protein_ortho
  }
  command <<<
    proteinortho2html_pl \
      ~{my_project_dot_protein_ortho}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    my_project_dot_protein_ortho: ""
  }
  output {
    File out_stdout = stdout()
  }
}