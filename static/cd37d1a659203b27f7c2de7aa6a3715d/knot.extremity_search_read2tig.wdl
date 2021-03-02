version 1.0

task KnotextremitySearchRead2tig {
  input {
    Int read_two_read
    String var_output
  }
  command <<<
    knot_extremity_search read2tig \
      ~{read_two_read} \
      ~{var_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0"
  }
  parameter_meta {
    read_two_read: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}