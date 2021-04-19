version 1.0

task Proteinortho2treepl {
  input {
    String ortho_matrix
  }
  command <<<
    proteinortho2tree_pl \
      ~{ortho_matrix}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteinortho:6.0.30--hb0e25da_0"
  }
  parameter_meta {
    ortho_matrix: ""
  }
  output {
    File out_stdout = stdout()
  }
}