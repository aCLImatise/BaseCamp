version 1.0

task KnotfilterTig {
  input {
    String? t
    String filter_contig
    String var_input
    String var_output
  }
  command <<<
    knot_filter_tig \
      ~{filter_contig} \
      ~{var_input} \
      ~{var_output} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0"
  }
  parameter_meta {
    t: ""
    filter_contig: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}