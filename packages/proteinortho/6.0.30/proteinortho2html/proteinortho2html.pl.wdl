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
    docker: "quay.io/biocontainers/proteinortho:6.0.30--hb0e25da_0"
  }
  parameter_meta {
    my_project_dot_protein_ortho: ""
  }
  output {
    File out_stdout = stdout()
  }
}