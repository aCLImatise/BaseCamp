version 1.0

task Rsemparsealignments {
  command <<<
    rsem_parse_alignments
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}