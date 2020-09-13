version 1.0

task GeneAnnotationParserpy {
  command <<<
    gene_annotation_parser_py
  >>>
  output {
    File out_stdout = stdout()
  }
}