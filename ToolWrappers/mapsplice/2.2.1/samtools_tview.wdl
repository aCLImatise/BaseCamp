version 1.0

task SamtoolsTview {
  input {
    String bam_tk
    String t_view
    String aln_dot_bam
    String? ref_dot_fast_a
  }
  command <<<
    samtools tview \
      ~{bam_tk} \
      ~{t_view} \
      ~{aln_dot_bam} \
      ~{ref_dot_fast_a}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_tk: ""
    t_view: ""
    aln_dot_bam: ""
    ref_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}