version 1.0

task KnotsgGenerationInput {
  input {
    String knot_dots_g_generation
    Int reads_two_contig
    String var_input
    String var_output
  }
  command <<<
    knot_sg_generation input \
      ~{knot_dots_g_generation} \
      ~{reads_two_contig} \
      ~{var_input} \
      ~{var_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0"
  }
  parameter_meta {
    knot_dots_g_generation: ""
    reads_two_contig: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}