version 1.0

task GeneOntologyUtilspy {
  command <<<
    gene_ontology_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}