version 1.0

task FindGapsInCoverageOfPacbios {
  input {
    File? input_file
    Int? max_gap_overlap
    Int? min_ovl_implied_vs_gap_end
    Int? min_match_len_for_implied_match
    String cmdline_parse
  }
  command <<<
    findGapsInCoverageOfPacbios \
      ~{cmdline_parse} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(max_gap_overlap) then ("--max-gap-overlap " +  '"' + max_gap_overlap + '"') else ""} \
      ~{if defined(min_ovl_implied_vs_gap_end) then ("--min-ovl-implied-vs-gap-end " +  '"' + min_ovl_implied_vs_gap_end + '"') else ""} \
      ~{if defined(min_match_len_for_implied_match) then ("--min-match-len-for-implied-match " +  '"' + min_match_len_for_implied_match + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "*Pacbio read-super-read match file"
    max_gap_overlap: "Shorter matches between good-overlap regions are considered a gap (70)"
    min_ovl_implied_vs_gap_end: "Implied overlaps which overlap good match regions by less than this are not processed (100)"
    min_match_len_for_implied_match: "Will not use implied matches of matches whose actual match is shorter than this (30)"
    cmdline_parse: ""
  }
  output {
    File out_stdout = stdout()
  }
}