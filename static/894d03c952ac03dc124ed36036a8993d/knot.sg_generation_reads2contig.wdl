version 1.0

task KnotsgGenerationReads2contig {
  input {
    String var_input
    String var_output
  }
  command <<<
    knot_sg_generation reads2contig \
      ~{var_input} \
      ~{var_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0"
  }
  parameter_meta {
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}