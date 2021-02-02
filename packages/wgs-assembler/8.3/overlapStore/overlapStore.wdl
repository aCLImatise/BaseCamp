version 1.0

task OverlapStore {
  input {
    Boolean? dump_a_store
    Boolean? report_ab_overlap
    Boolean? dump_picture_overlaps
    Boolean? estimate_genome_length
    Boolean? dump_store_binary
    String? dump_overlaps_error
    Int? dump_only_overlaps_larger
    Boolean? d_five
    Boolean? d_three
    Boolean? dump_only_overlaps_contained
    Boolean? dump_only_overlaps_containing
    String? start_dumping_at
    String? stop_dumping_after
    Boolean? report_statistics_stderr
  }
  command <<<
    overlapStore \
      ~{if (dump_a_store) then "-d" else ""} \
      ~{if (report_ab_overlap) then "-q" else ""} \
      ~{if (dump_picture_overlaps) then "-p" else ""} \
      ~{if (estimate_genome_length) then "-G" else ""} \
      ~{if (dump_store_binary) then "-B" else ""} \
      ~{if defined(dump_overlaps_error) then ("-E " +  '"' + dump_overlaps_error + '"') else ""} \
      ~{if defined(dump_only_overlaps_larger) then ("-L " +  '"' + dump_only_overlaps_larger + '"') else ""} \
      ~{if (d_five) then "-d5" else ""} \
      ~{if (d_three) then "-d3" else ""} \
      ~{if (dump_only_overlaps_contained) then "-dC" else ""} \
      ~{if (dump_only_overlaps_containing) then "-dc" else ""} \
      ~{if defined(start_dumping_at) then ("-b " +  '"' + start_dumping_at + '"') else ""} \
      ~{if defined(stop_dumping_after) then ("-e " +  '"' + stop_dumping_after + '"') else ""} \
      ~{if (report_statistics_stderr) then "-v" else ""}
  >>>
  parameter_meta {
    dump_a_store: "dump a store"
    report_ab_overlap: "report the a,b overlap, if it exists."
    dump_picture_overlaps: "dump a picture of overlaps to fragment 'iid', using clear region 'clr'."
    estimate_genome_length: "estimate genome length"
    dump_store_binary: "Dump the store as binary, suitable for input to create a new store."
    dump_overlaps_error: "Dump only overlaps <= erate error."
    dump_only_overlaps_larger: "Dump only overlaps that are larger than L bases (only for -p picture mode)."
    d_five: "Dump only overlaps off the 5' end of the A frag."
    d_three: "Dump only overlaps off the 3' end of the A frag."
    dump_only_overlaps_contained: "Dump only overlaps that are contained in the A frag (B contained in A)."
    dump_only_overlaps_containing: "Dump only overlaps that are containing the A frag (A contained in B)."
    start_dumping_at: "Start dumping at 'beginIID'."
    stop_dumping_after: "Stop dumping after 'endIID'."
    report_statistics_stderr: "Report statistics (to stderr) on some dumps (-d)."
  }
  output {
    File out_stdout = stdout()
  }
}