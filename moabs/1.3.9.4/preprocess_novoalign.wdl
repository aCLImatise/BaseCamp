version 1.0

task PreprocessNovoalign.sh {
  input {
    String sam_tools
    String view
    String in_dot_bam
  }
  command <<<
    preprocess_novoalign.sh \
      ~{sam_tools} \
      ~{view} \
      ~{in_dot_bam}
  >>>
  parameter_meta {
    sam_tools: ""
    view: ""
    in_dot_bam: ""
  }
}