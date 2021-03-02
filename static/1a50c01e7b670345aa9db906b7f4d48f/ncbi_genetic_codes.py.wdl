version 1.0

task NcbiGeneticCodespy {
  command <<<
    ncbi_genetic_codes_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}