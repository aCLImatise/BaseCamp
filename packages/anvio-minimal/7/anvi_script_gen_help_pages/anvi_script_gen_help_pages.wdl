version 1.0

task Anviscriptgenhelppages {
  input {
    Boolean? debug
    File? o
  }
  command <<<
    anvi_script_gen_help_pages \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    debug: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}