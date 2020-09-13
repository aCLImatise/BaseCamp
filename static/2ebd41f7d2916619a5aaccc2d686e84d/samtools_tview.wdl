version 1.0

task SamtoolsTview {
  input {
    String? output_html_curses
    String? pos_go_directly
    String? display_only_reads
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
      ~{ref_dot_fast_a} \
      ~{if defined(output_html_curses) then ("-d " +  '"' + output_html_curses + '"') else ""} \
      ~{if defined(pos_go_directly) then ("-p " +  '"' + pos_go_directly + '"') else ""} \
      ~{if defined(display_only_reads) then ("-s " +  '"' + display_only_reads + '"') else ""}
  >>>
  parameter_meta {
    output_html_curses: "output as (H)tml or (C)urses or (T)ext"
    pos_go_directly: ":pos      go directly to this position"
    display_only_reads: "display only reads from this sample or group"
    bam_tk: ""
    t_view: ""
    aln_dot_bam: ""
    ref_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}