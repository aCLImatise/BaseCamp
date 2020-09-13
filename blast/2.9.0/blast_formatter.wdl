version 1.0

task BlastFormatter {
  command <<<
    blast_formatter
  >>>
  output {
    File out_stdout = stdout()
  }
}