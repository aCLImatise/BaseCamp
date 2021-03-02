version 1.0

task WeedMafpl {
  input {
    String format
  }
  command <<<
    weedMaf_pl \
      ~{format}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "SYNOPSIS"
  }
  output {
    File out_stdout = stdout()
  }
}