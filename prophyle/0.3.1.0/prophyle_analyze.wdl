version 1.0

task ProphyleAnalyze.py {
  input {
    Boolean? statistics_use_computation
    Boolean? selected_program_expects
  }
  command <<<
    prophyle_analyze.py \
      ~{true="-s" false="" statistics_use_computation} \
      ~{true="-f" false="" selected_program_expects}
  >>>
  parameter_meta {
    statistics_use_computation: "['w', 'u', 'wl', 'ul'] Statistics to use for the computation of histograms: w (default) => weighted assignments; u => unique assignments, non-weighted; wl => weighted assignments, propagated to leaves; ul => unique assignments, propagated to leaves."
    selected_program_expects: "['sam', 'bam', 'cram', 'uncompressed_bam', 'kraken', 'histo'] Input format of assignments [auto]. If 'histo' is selected the program expects hit count histograms (*_rawhits.tsv) previously computed using prophyle analyze, it merges them and compute OTU table from the result (assignment files are not required)"
  }
}