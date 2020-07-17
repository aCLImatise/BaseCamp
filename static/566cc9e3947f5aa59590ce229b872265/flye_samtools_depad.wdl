version 1.0

task FlyeSamtoolsDepad {
  input {
    String sam_tools
    String de_pad
    String in_dot_bam
  }
  command <<<
    flye-samtools depad \
      ~{sam_tools} \
      ~{de_pad} \
      ~{in_dot_bam}
  >>>
  parameter_meta {
    sam_tools: ""
    de_pad: ""
    in_dot_bam: ""
  }
}