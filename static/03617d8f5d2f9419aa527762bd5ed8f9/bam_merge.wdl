version 1.0

task BamMerge {
  input {
    Boolean? q
    String out_dot_bam
    String in_one_dot_bam
    String in_two_dot_bam
  }
  command <<<
    bam_merge \
      ~{out_dot_bam} \
      ~{in_one_dot_bam} \
      ~{in_two_dot_bam} \
      ~{true="-Q" false="" q}
  >>>
  parameter_meta {
    q: ""
    out_dot_bam: ""
    in_one_dot_bam: ""
    in_two_dot_bam: ""
  }
}