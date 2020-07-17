version 1.0

task AlfredReplication {
  input {
    Boolean? arg_min_quality
    Boolean? arg_sliding_size
    Boolean? arg_window_size
    Boolean? arg_reference_fasta
    Boolean? arg_pref_output
    String gone_b_dot_bam
    String s_one_dot_bam
    String s_two_dot_bam
    String s_three_dot_bam
    String s_four_dot_bam
    String g_two_dot_bam
  }
  command <<<
    alfred replication \
      ~{gone_b_dot_bam} \
      ~{s_one_dot_bam} \
      ~{s_two_dot_bam} \
      ~{s_three_dot_bam} \
      ~{s_four_dot_bam} \
      ~{g_two_dot_bam} \
      ~{true="-q" false="" arg_min_quality} \
      ~{true="-w" false="" arg_sliding_size} \
      ~{true="-s" false="" arg_window_size} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-o" false="" arg_pref_output}
  >>>
  parameter_meta {
    arg_min_quality: "[ --qual ] arg (=1)          min. mapping quality"
    arg_sliding_size: "[ --window ] arg (=50000)    sliding window size"
    arg_window_size: "[ --step ] arg (=1000)       window offset (step size)"
    arg_reference_fasta: "[ --reference ] arg          reference fasta file (required)"
    arg_pref_output: "[ --outprefix ] arg (=pref)  output file prefix"
    gone_b_dot_bam: ""
    s_one_dot_bam: ""
    s_two_dot_bam: ""
    s_three_dot_bam: ""
    s_four_dot_bam: ""
    g_two_dot_bam: ""
  }
}