version 1.0

task _2MakeFormatpl {
  command <<<
    __2_make_format_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}