version 1.0

task FormatNumberplbak {
  command <<<
    format_number_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}