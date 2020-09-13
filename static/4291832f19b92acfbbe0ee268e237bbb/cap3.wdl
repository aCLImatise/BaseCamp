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
    Boolean? n_specify_pair_cutoff
    Boolean? n_specify_chain_cutoff
    Boolean? n_specify_flag
    Boolean? n_specify_score_factor
    Boolean? n_specify_mismatch_factor
    Boolean? n_specify_length_cutoff
    Boolean? n_specify_percent_cutoff
    Boolean? n_specify_value
    Boolean? n_specify_overlap
    Boolean? n_specify_number
    Boolean? n_correction_n
    Boolean? n_linking_n
    Boolean? n_specify_name
    File? n_specify_string
    Boolean? n_specify_range
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
      ~{if (n_specify_gap) then "-g" else ""} \
      ~{if (n_specify_pair_cutoff) then "-i" else ""} \
      ~{if (n_specify_chain_cutoff) then "-j" else ""} \
      ~{if (n_specify_flag) then "-k" else ""} \
      ~{if (n_specify_score_factor) then "-m" else ""} \
      ~{if (n_specify_mismatch_factor) then "-n" else ""} \
      ~{if (n_specify_length_cutoff) then "-o" else ""} \
      ~{if (n_specify_percent_cutoff) then "-p" else ""} \
      ~{if (n_specify_value) then "-r" else ""} \
      ~{if (n_specify_overlap) then "-s" else ""} \
      ~{if (n_specify_number) then "-t" else ""} \
      ~{if (n_correction_n) then "-u" else ""} \
      ~{if (n_linking_n) then "-v" else ""} \
      ~{if (n_specify_name) then "-w" else ""} \
      ~{if (n_specify_string) then "-x" else ""} \
      ~{if (n_specify_range) then "-y" else ""} \
      ~{if (n_specify_min) then "-z" else ""}
  >>>
  parameter_meta {
    n_specify_size: "N  specify band expansion size N > 10 (20)"
    n_specify_differences: "N  specify base quality cutoff for differences N > 15 (20)"
    n_clipping_n: "N  specify base quality cutoff for clipping N > 5 (12)"
    n_specify_sum: "N  specify max qscore sum at differences N > 20 (200)"
    n_specify_clearance: "N  specify clearance between no. of diff N > 10 (30)"
    n_specify_length: "N  specify max gap length in any overlap N > 1 (20)"
    n_specify_gap: "N  specify gap penalty factor N > 0 (6)"
    n_specify_pair_cutoff: "N  specify segment pair score cutoff N > 20 (40)"
    n_specify_chain_cutoff: "N  specify chain score cutoff N > 30 (80)"
    n_specify_flag: "N  specify end clipping flag N >= 0 (1)"
    n_specify_score_factor: "N  specify match score factor N > 0 (2)"
    n_specify_mismatch_factor: "N  specify mismatch score factor N < 0 (-5)"
    n_specify_length_cutoff: "N  specify overlap length cutoff > 15 (40)"
    n_specify_percent_cutoff: "N  specify overlap percent identity cutoff N > 65 (90)"
    n_specify_value: "N  specify reverse orientation value N >= 0 (1)"
    n_specify_overlap: "N  specify overlap similarity score cutoff N > 250 (900)"
    n_specify_number: "N  specify max number of word matches N > 30 (300)"
    n_correction_n: "N  specify min number of constraints for correction N > 0 (3)"
    n_linking_n: "N  specify min number of constraints for linking N > 0 (2)"
    n_specify_name: "N  specify file name for clipping information (none)"
    n_specify_string: "N  specify prefix string for output file names (cap)"
    n_specify_range: "N  specify clipping range N > 5 (100)"
    n_specify_min: "N  specify min no. of good reads at clip pos N > 0 (3)"
    file_of_reads: ""
  }
  output {
    File out_stdout = stdout()
    File out_n_specify_string = "${in_n_specify_string}"
  }
}