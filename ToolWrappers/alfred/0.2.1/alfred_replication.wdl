version 1.0

task AlfredReplication {
  input {
    Boolean? arg_min_quality
    Boolean? arg_sliding_size
    Boolean? arg_window_offset
    Boolean? arg_reference_fasta
    File? arg_pref_output
    Int gone_b_dot_bam
    Int s_one_dot_bam
    Int s_two_dot_bam
    Int s_three_dot_bam
    Int s_four_dot_bam
    Int g_two_dot_bam
  }
  command <<<
    alfred replication \
      ~{gone_b_dot_bam} \
      ~{s_one_dot_bam} \
      ~{s_two_dot_bam} \
      ~{s_three_dot_bam} \
      ~{s_four_dot_bam} \
      ~{g_two_dot_bam} \
      ~{if (arg_min_quality) then "-q" else ""} \
      ~{if (arg_sliding_size) then "-w" else ""} \
      ~{if (arg_window_offset) then "-s" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_pref_output) then "-o" else ""}
  >>>
  parameter_meta {
    arg_min_quality: "[ --qual ] arg (=1)          min. mapping quality"
    arg_sliding_size: "[ --window ] arg (=50000)    sliding window size"
    arg_window_offset: "[ --step ] arg (=1000)       window offset (step size)"
    arg_reference_fasta: "[ --reference ] arg          reference fasta file (required)"
    arg_pref_output: "[ --outprefix ] arg (=pref)  output file prefix"
    gone_b_dot_bam: ""
    s_one_dot_bam: ""
    s_two_dot_bam: ""
    s_three_dot_bam: ""
    s_four_dot_bam: ""
    g_two_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_pref_output = "${in_arg_pref_output}"
  }
}