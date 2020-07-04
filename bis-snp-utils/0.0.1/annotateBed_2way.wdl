version 1.0

task AnnotateBed2way.pl {
  input {
    String? an_no
    String perl
    String annotate_bed_do_tpl
    String bed_slash_gff_file
    String summary_file_dot_txt
  }
  command <<<
    annotateBed_2way.pl \
      ~{perl} \
      ~{annotate_bed_do_tpl} \
      ~{bed_slash_gff_file} \
      ~{summary_file_dot_txt} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""}
  >>>
  parameter_meta {
    an_no: ""
    perl: ""
    annotate_bed_do_tpl: ""
    bed_slash_gff_file: ""
    summary_file_dot_txt: ""
  }
}