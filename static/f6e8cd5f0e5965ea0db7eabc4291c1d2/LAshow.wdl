version 1.0

task LAshow {
  input {
    Boolean? show_cartoon_reads
    Boolean? show_alignment_la
    Boolean? show_with_bps
    Boolean? show_proper_overlaps
    Boolean? switch_roles_
    Boolean? show_alignments_upper
    Boolean? indent_alignments_cartoons
    Boolean? width_row_r
    Boolean? border_bps_show
    Boolean? car_ouf
  }
  command <<<
    LAshow \
      ~{if (show_cartoon_reads) then "-c" else ""} \
      ~{if (show_alignment_la) then "-a" else ""} \
      ~{if (show_with_bps) then "-r" else ""} \
      ~{if (show_proper_overlaps) then "-o" else ""} \
      ~{if (switch_roles_) then "-F" else ""} \
      ~{if (show_alignments_upper) then "-U" else ""} \
      ~{if (indent_alignments_cartoons) then "-i" else ""} \
      ~{if (width_row_r) then "-w" else ""} \
      ~{if (border_bps_show) then "-b" else ""} \
      ~{if (car_ouf) then "-caroUF" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    show_cartoon_reads: ": Show a cartoon of the LA between reads."
    show_alignment_la: ": Show the alignment of each LA."
    show_with_bps: ": Show the alignment of each LA with -w bp's of A in each row."
    show_proper_overlaps: ": Show only proper overlaps."
    switch_roles_: ": Switch the roles of A- and B-reads."
    show_alignments_upper: ": Show alignments in upper case."
    indent_alignments_cartoons: ": Indent alignments and cartoons by -i."
    width_row_r: ": Width of each row of alignment in symbols (-a) or bps (-r)."
    border_bps_show: ": # of border bp.s to show on each side of LA."
    car_ouf: ""
  }
  output {
    File out_stdout = stdout()
  }
}