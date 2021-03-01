version 1.0

task Cap3 {
  input {
    Boolean? n_specify_size
    Boolean? n_specify_differences
    Boolean? n_clipping_n
    Boolean? n_specify_sum
    Boolean? n_specify_clearance
    Boolean? n_specify_length
    Boolean? n_specify_gap_factor
    Boolean? n_specify_pair
    Boolean? n_specify_chain_score_cutoff
    Boolean? n_specify_end
    Boolean? n_specify_match_factor
    Boolean? n_specify_mismatch
    Boolean? n_specify_length_cutoff
    Boolean? n_specify_percent_cutoff
    Boolean? n_specify_value
    Boolean? n_specify_similarity_score_cutoff
    Boolean? n_specify_number
    Boolean? n_specify_correction
    Boolean? n_linking_n
    Boolean? n_specify_name
    File? n_specify_string
    Boolean? n_specify_clipping
    Boolean? n_specify_min
    String file_of_reads
  }
  command <<<
    cap3 \
      ~{file_of_reads} \
      ~{if (n_specify_size) then "-a" else ""} \
      ~{if (n_specify_differences) then "-b" else ""} \
      ~{if (n_clipping_n) then "-c" else ""} \
      ~{if (n_specify_sum) then "-d" else ""} \
      ~{if (n_specify_clearance) then "-e" else ""} \
      ~{if (n_specify_length) then "-f" else ""} \
      ~{if (n_specify_gap_factor) then "-g" else ""} \
      ~{if (n_specify_pair) then "-i" else ""} \
      ~{if (n_specify_chain_score_cutoff) then "-j" else ""} \
      ~{if (n_specify_end) then "-k" else ""} \
      ~{if (n_specify_match_factor) then "-m" else ""} \
      ~{if (n_specify_mismatch) then "-n" else ""} \
      ~{if (n_specify_length_cutoff) then "-o" else ""} \
      ~{if (n_specify_percent_cutoff) then "-p" else ""} \
      ~{if (n_specify_value) then "-r" else ""} \
      ~{if (n_specify_similarity_score_cutoff) then "-s" else ""} \
      ~{if (n_specify_number) then "-t" else ""} \
      ~{if (n_specify_correction) then "-u" else ""} \
      ~{if (n_linking_n) then "-v" else ""} \
      ~{if (n_specify_name) then "-w" else ""} \
      ~{if (n_specify_string) then "-x" else ""} \
      ~{if (n_specify_clipping) then "-y" else ""} \
      ~{if (n_specify_min) then "-z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n_specify_size: "N  specify band expansion size N > 10 (20)"
    n_specify_differences: "N  specify base quality cutoff for differences N > 15 (20)"
    n_clipping_n: "N  specify base quality cutoff for clipping N > 5 (12)"
    n_specify_sum: "N  specify max qscore sum at differences N > 20 (200)"
    n_specify_clearance: "N  specify clearance between no. of diff N > 10 (30)"
    n_specify_length: "N  specify max gap length in any overlap N > 1 (20)"
    n_specify_gap_factor: "N  specify gap penalty factor N > 0 (6)"
    n_specify_pair: "N  specify segment pair score cutoff N > 20 (40)"
    n_specify_chain_score_cutoff: "N  specify chain score cutoff N > 30 (80)"
    n_specify_end: "N  specify end clipping flag N >= 0 (1)"
    n_specify_match_factor: "N  specify match score factor N > 0 (2)"
    n_specify_mismatch: "N  specify mismatch score factor N < 0 (-5)"
    n_specify_length_cutoff: "N  specify overlap length cutoff > 15 (40)"
    n_specify_percent_cutoff: "N  specify overlap percent identity cutoff N > 65 (90)"
    n_specify_value: "N  specify reverse orientation value N >= 0 (1)"
    n_specify_similarity_score_cutoff: "N  specify overlap similarity score cutoff N > 250 (900)"
    n_specify_number: "N  specify max number of word matches N > 30 (300)"
    n_specify_correction: "N  specify min number of constraints for correction N > 0 (3)"
    n_linking_n: "N  specify min number of constraints for linking N > 0 (2)"
    n_specify_name: "N  specify file name for clipping information (none)"
    n_specify_string: "N  specify prefix string for output file names (cap)"
    n_specify_clipping: "N  specify clipping range N > 5 (100)"
    n_specify_min: "N  specify min no. of good reads at clip pos N > 0 (3)"
    file_of_reads: ""
  }
  output {
    File out_stdout = stdout()
    File out_n_specify_string = "${in_n_specify_string}"
  }
}