version 1.0

task TagBamTagValue {
  input {
    String tag_bam
    String var_input
    String var_output
    String tag_name
    String tag_value
  }
  command <<<
    tag_bam tag_value \
      ~{tag_bam} \
      ~{var_input} \
      ~{var_output} \
      ~{tag_name} \
      ~{tag_value}
  >>>
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