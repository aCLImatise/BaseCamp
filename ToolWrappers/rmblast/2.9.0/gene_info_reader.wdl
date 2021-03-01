version 1.0

task GeneInfoReader {
  command <<<
    gene_info_reader
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}