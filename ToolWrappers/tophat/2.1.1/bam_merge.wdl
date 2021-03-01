version 1.0

task BamMerge {
  input {
    Boolean? q
    String out_dot_bam
    Int in_one_dot_bam
    Int in_two_dot_bam
  }
  command <<<
    bam_merge \
      ~{out_dot_bam} \
      ~{in_one_dot_bam} \
      ~{in_two_dot_bam} \
      ~{if (q) then "-Q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    q: ""
    out_dot_bam: ""
    in_one_dot_bam: ""
    in_two_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}