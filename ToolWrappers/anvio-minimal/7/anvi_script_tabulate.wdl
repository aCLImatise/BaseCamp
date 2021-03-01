version 1.0

task Anviscripttabulate {
  input {
    Boolean? debug
    Int? max_width
  }
  command <<<
    anvi_script_tabulate \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(max_width) then ("--max-width " +  '"' + max_width + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    debug: ""
    max_width: ""
  }
  output {
    File out_stdout = stdout()
  }
}