version 1.0

task FlyesamtoolsTview {
  input {
    String? output_html_curses
    String? pos_go_directly
    String? display_only_reads
    File? input_fmt_option
    File? reference
    String sam_tools
    String t_view
    String aln_dot_bam
    String? ref_dot_fast_a
  }
  command <<<
    flye_samtools tview \
      ~{sam_tools} \
      ~{t_view} \
      ~{aln_dot_bam} \
      ~{ref_dot_fast_a} \
      ~{if defined(output_html_curses) then ("-d " +  '"' + output_html_curses + '"') else ""} \
      ~{if defined(pos_go_directly) then ("-p " +  '"' + pos_go_directly + '"') else ""} \
      ~{if defined(display_only_reads) then ("-s " +  '"' + display_only_reads + '"') else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    output_html_curses: "output as (H)tml or (C)urses or (T)ext"
    pos_go_directly: ":pos      go directly to this position"
    display_only_reads: "display only reads from this sample or group"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]\\n"
    sam_tools: ""
    t_view: ""
    aln_dot_bam: ""
    ref_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}