version 1.0

task FilterCorrectionOverlaps {
  input {
    String? input_reads
    String? input_overlaps
    File? scores
    Boolean? estimate
    Boolean? exact
    Boolean? compare
    String? retain_most_many
    Int? filter_overlaps_shorter
    Boolean? minmax_filter_overlaps
    Boolean? no_log
    Boolean? no_stats
  }
  command <<<
    filterCorrectionOverlaps \
      ~{if defined(input_reads) then ("-S " +  '"' + input_reads + '"') else ""} \
      ~{if defined(input_overlaps) then ("-O " +  '"' + input_overlaps + '"') else ""} \
      ~{if defined(scores) then ("-scores " +  '"' + scores + '"') else ""} \
      ~{if (estimate) then "-estimate" else ""} \
      ~{if (exact) then "-exact" else ""} \
      ~{if (compare) then "-compare" else ""} \
      ~{if defined(retain_most_many) then ("-c " +  '"' + retain_most_many + '"') else ""} \
      ~{if defined(filter_overlaps_shorter) then ("-l " +  '"' + filter_overlaps_shorter + '"') else ""} \
      ~{if (minmax_filter_overlaps) then "-e" else ""} \
      ~{if (no_log) then "-nolog" else ""} \
      ~{if (no_stats) then "-nostats" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    input_reads: "input reads"
    input_overlaps: "input overlaps"
    scores: "output scores for each read, binary file, to file 'sf'\\nper-read logging to 'sf.log' (see -nolog)\\nsummary statistics to 'sf.stats' (see -nostats)"
    estimate: "estimate the cutoff from precomputed scores"
    exact: "compute an exact cutoff by reading all overlaps"
    compare: "output a comparison of estimated vs exact scores"
    retain_most_many: "retain at most this many overlaps per read"
    filter_overlaps_shorter: "filter overlaps shorter than this length"
    minmax_filter_overlaps: "(min-)max    filter overlaps outside this range of fraction error\\nexample:  -e 0.20          filter overlaps above 20% error\\nexample:  -e 0.05-0.20     filter overlaps below 5% error\\nor above 20% error"
    no_log: "don't create 'scoreFile.log'"
    no_stats: "don't create 'scoreFile.stats'"
  }
  output {
    File out_stdout = stdout()
    File out_scores = "${in_scores}"
  }
}