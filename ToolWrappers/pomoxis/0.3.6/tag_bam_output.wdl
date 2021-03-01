version 1.0

task TagBamOutput {
  input {
    String tag_bam
    String var_input
    String var_output
    String tag_name
    String tag_value
  }
  command <<<
    tag_bam output \
      ~{tag_bam} \
      ~{var_input} \
      ~{var_output} \
      ~{tag_name} \
      ~{tag_value}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pomoxis:0.3.6--py_0"
  }
  parameter_meta {
    tag_bam: ""
    var_input: ""
    var_output: ""
    tag_name: ""
    tag_value: ""
  }
  output {
    File out_stdout = stdout()
  }
}