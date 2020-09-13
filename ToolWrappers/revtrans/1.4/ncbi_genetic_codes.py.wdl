version 1.0

task NcbiGeneticCodespy {
  command <<<
    ncbi_genetic_codes_py
  >>>
  output {
    File out_stdout = stdout()
  }
}