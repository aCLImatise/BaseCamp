version 1.0

task FormatNumberpl {
  command <<<
    format_number_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}