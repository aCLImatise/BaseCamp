version 1.0

task BlastFormatter {
  command <<<
    blast_formatter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}