version 1.0

task Cap3 {
  input {
    Boolean? n_specify_size
    Boolean? n_specify_differences
    Boolean? n_clipping_n
    Boolean? n_specify_sum
    Boolean? n_specify_clearance
    Boolean? n_specify_length
    Boolean? n_specify_gap
    Boolean? n_specify_score_cutoff
    Boolean? n_specify_chain
    Boolean? n_specify_end
    Boolean? n_specify_match
    Boolean? n_specify_factor
    Boolean? n_specify_length_cutoff
    Boolean? n_specify_percent_cutoff
    Boolean? n_specify_value
    Boolean? n_specify_cutoff_n
    Boolean? n_specify_matches
    Boolean? n_specify_correction
    Boolean? n_linking_n
    Boolean? n_specify_file
    Boolean? n_specify_prefix
    Boolean? n_specify_range_n
    Boolean? n_specify_min
    File file_of_reads
  }
  command <<<
    cap3 \
      ~{file_of_reads} \
      ~{true="-a" false="" n_specify_size} \
      ~{true="-b" false="" n_specify_differences} \
      ~{true="-c" false="" n_clipping_n} \
      ~{true="-d" false="" n_specify_sum} \
      ~{true="-e" false="" n_specify_clearance} \
      ~{true="-f" false="" n_specify_length} \
      ~{true="-g" false="" n_specify_gap} \
      ~{true="-i" false="" n_specify_score_cutoff} \
      ~{true="-j" false="" n_specify_chain} \
      ~{true="-k" false="" n_specify_end} \
      ~{true="-m" false="" n_specify_match} \
      ~{true="-n" false="" n_specify_factor} \
      ~{true="-o" false="" n_specify_length_cutoff} \
      ~{true="-p" false="" n_specify_percent_cutoff} \
      ~{true="-r" false="" n_specify_value} \
      ~{true="-s" false="" n_specify_cutoff_n} \
      ~{true="-t" false="" n_specify_matches} \
      ~{true="-u" false="" n_specify_correction} \
      ~{true="-v" false="" n_linking_n} \
      ~{true="-w" false="" n_specify_file} \
      ~{true="-x" false="" n_specify_prefix} \
      ~{true="-y" false="" n_specify_range_n} \
      ~{true="-z" false="" n_specify_min}
  >>>
  parameter_meta {
    n_specify_size: "N  specify band expansion size N > 10 (20)"
    n_specify_differences: "N  specify base quality cutoff for differences N > 15 (20)"
    n_clipping_n: "N  specify base quality cutoff for clipping N > 5 (12)"
    n_specify_sum: "N  specify max qscore sum at differences N > 20 (200)"
    n_specify_clearance: "N  specify clearance between no. of diff N > 10 (30)"
    n_specify_length: "N  specify max gap length in any overlap N > 1 (20)"
    n_specify_gap: "N  specify gap penalty factor N > 0 (6)"
    n_specify_score_cutoff: "N  specify segment pair score cutoff N > 20 (40)"
    n_specify_chain: "N  specify chain score cutoff N > 30 (80)"
    n_specify_end: "N  specify end clipping flag N >= 0 (1)"
    n_specify_match: "N  specify match score factor N > 0 (2)"
    n_specify_factor: "N  specify mismatch score factor N < 0 (-5)"
    n_specify_length_cutoff: "N  specify overlap length cutoff > 15 (40)"
    n_specify_percent_cutoff: "N  specify overlap percent identity cutoff N > 65 (90)"
    n_specify_value: "N  specify reverse orientation value N >= 0 (1)"
    n_specify_cutoff_n: "N  specify overlap similarity score cutoff N > 250 (900)"
    n_specify_matches: "N  specify max number of word matches N > 30 (300)"
    n_specify_correction: "N  specify min number of constraints for correction N > 0 (3)"
    n_linking_n: "N  specify min number of constraints for linking N > 0 (2)"
    n_specify_file: "N  specify file name for clipping information (none)"
    n_specify_prefix: "N  specify prefix string for output file names (cap)"
    n_specify_range_n: "N  specify clipping range N > 5 (100)"
    n_specify_min: "N  specify min no. of good reads at clip pos N > 0 (3)"
    file_of_reads: ""
  }
}