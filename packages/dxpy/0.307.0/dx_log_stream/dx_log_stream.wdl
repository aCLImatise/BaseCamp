version 1.0

task Dxlogstream {
  input {
    String? level
    String? source
  }
  command <<<
    dx_log_stream \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0"
  }
  parameter_meta {
    level: "Logging level to use"
    source: "Source ID to use\\n"
  }
  output {
    File out_stdout = stdout()
  }
}