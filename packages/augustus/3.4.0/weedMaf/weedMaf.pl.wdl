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
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    format: "SYNOPSIS"
  }
  output {
    File out_stdout = stdout()
  }
}