version 1.0

task Findquerybreaks {
  input {
    Int? minimum_length_alignment
    Int? minimum_distance_edge
    Int? minimum_length_report
    String? flag_broken_alignments
    Boolean? flag_adjacent_alignments
    Boolean? only_show_collapses
    Boolean? only_show_breaks
    Boolean? load_fix_regions
    Boolean? display_breaks_amos
  }
  command <<<
    find_query_breaks \
      ~{if defined(minimum_length_alignment) then ("-b " +  '"' + minimum_length_alignment + '"') else ""} \
      ~{if defined(minimum_distance_edge) then ("-w " +  '"' + minimum_distance_edge + '"') else ""} \
      ~{if defined(minimum_length_report) then ("-l " +  '"' + minimum_length_report + '"') else ""} \
      ~{if defined(flag_broken_alignments) then ("-f " +  '"' + flag_broken_alignments + '"') else ""} \
      ~{if (flag_adjacent_alignments) then "-s" else ""} \
      ~{if (only_show_collapses) then "-C" else ""} \
      ~{if (only_show_breaks) then "-B" else ""} \
      ~{if (load_fix_regions) then "-c" else ""} \
      ~{if (display_breaks_amos) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_length_alignment: "Minimum length of alignment break to report (Default: 10)"
    minimum_distance_edge: "Minimum distance to edge of reference sequence to report (Default: 0)"
    minimum_length_report: "Minimum length of query sequence to report (Default: 0)"
    flag_broken_alignments: "Flag broken alignments within this distance of reference"
    flag_adjacent_alignments: "Flag adjacent broken alignments from same query"
    only_show_collapses: "Only show collapses"
    only_show_breaks: "Only show alignment breaks"
    load_fix_regions: "Load fix regions from all.feat and mark if fixed in -B breakreport"
    display_breaks_amos: "Display breaks as AMOS features"
  }
  output {
    File out_stdout = stdout()
  }
}