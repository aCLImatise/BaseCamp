version 1.0

task GeneAnnotationParserLoadPickledFilespy {
  command <<<
    gene_annotation_parser_load_pickled_files_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}