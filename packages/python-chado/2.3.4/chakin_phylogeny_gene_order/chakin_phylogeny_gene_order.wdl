version 1.0

task ChakinPhylogenyGeneOrder {
  input {
    Boolean? nuke
    String options
  }
  command <<<
    chakin phylogeny gene_order \
      ~{options} \
      ~{if (nuke) then "--nuke" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    nuke: "Removes all previous gene ordering data"
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}