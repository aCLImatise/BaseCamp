version 1.0

task GeneOntologyUtilspy {
  command <<<
    gene_ontology_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}