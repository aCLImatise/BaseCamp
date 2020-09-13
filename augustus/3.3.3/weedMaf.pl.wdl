version 1.0

task WeedMafpl {
  input {
    String format
  }
  command <<<
    weedMaf_pl \
      ~{format}
  >>>
  parameter_meta {
    format: "SYNOPSIS"
  }
  output {
    File out_stdout = stdout()
  }
}