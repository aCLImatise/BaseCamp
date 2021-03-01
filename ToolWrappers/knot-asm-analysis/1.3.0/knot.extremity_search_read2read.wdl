version 1.0

task KnotextremitySearchRead2read {
  input {
    String knot_dot_extremity_search
    Int read_two_tig
    Int read_two_read
    String var_output
  }
  command <<<
    knot_extremity_search read2read \
      ~{knot_dot_extremity_search} \
      ~{read_two_tig} \
      ~{read_two_read} \
      ~{var_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0"
  }
  parameter_meta {
    knot_dot_extremity_search: ""
    read_two_tig: ""
    read_two_read: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}