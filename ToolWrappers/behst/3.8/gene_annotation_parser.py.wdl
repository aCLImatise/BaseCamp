version 1.0

task GeneAnnotationParserpy {
  command <<<
    gene_annotation_parser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}