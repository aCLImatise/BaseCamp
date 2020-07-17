version 1.0

task FindQueryBreaks {
  input {
    String? minimum_length_alignment_report_default
    String? minimum_distance_edge
    String? minimum_length_query_report_default
    String? flag_broken_alignments
    Boolean? flag_adjacent_broken
    Boolean? only_show_collapses
    Boolean? only_show_breaks
    Boolean? load_fix_regions
    Boolean? display_breaks_features
  }
  command <<<
    find-query-breaks \
      ~{if defined(minimum_length_alignment_report_default) then ("-b " +  '"' + minimum_length_alignment_report_default + '"') else ""} \
      ~{if defined(minimum_distance_edge) then ("-w " +  '"' + minimum_distance_edge + '"') else ""} \
      ~{if defined(minimum_length_query_report_default) then ("-l " +  '"' + minimum_length_query_report_default + '"') else ""} \
      ~{if defined(flag_broken_alignments) then ("-f " +  '"' + flag_broken_alignments + '"') else ""} \
      ~{true="-s" false="" flag_adjacent_broken} \
      ~{true="-C" false="" only_show_collapses} \
      ~{true="-B" false="" only_show_breaks} \
      ~{true="-c" false="" load_fix_regions} \
      ~{true="-a" false="" display_breaks_features}
  >>>
  parameter_meta {
    minimum_length_alignment_report_default: "Minimum length of alignment break to report (Default: 10)"
    minimum_distance_edge: "Minimum distance to edge of reference sequence to report (Default: 0)"
    minimum_length_query_report_default: "Minimum length of query sequence to report (Default: 0)"
    flag_broken_alignments: "Flag broken alignments within this distance of reference"
    flag_adjacent_broken: "Flag adjacent broken alignments from same query"
    only_show_collapses: "Only show collapses"
    only_show_breaks: "Only show alignment breaks"
    load_fix_regions: "Load fix regions from all.feat and mark if fixed in -B breakreport"
    display_breaks_features: "Display breaks as AMOS features"
  }
}