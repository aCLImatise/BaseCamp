version 1.0

task Rsemparsealignments {
  command <<<
    rsem_parse_alignments
  >>>
  output {
    File out_stdout = stdout()
  }
}