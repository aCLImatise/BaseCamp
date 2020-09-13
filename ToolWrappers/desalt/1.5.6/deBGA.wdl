version 1.0

task DeBGA {
  input {
    Int? minimum_length_valid
    Int? number_iterations_reseeding
    Int? minimum_interval_seeding
    Int? maximum_allowed_number
    Int? threshold_edit_distance
    Int? cl
    Boolean? local
    Int? local_match
    Int? local_mismatch
    Int? local_gap_open
    Int? local_gap_extension
    Boolean? stdout
    Int? upper_limit_insert
    Int? lower_limit_insert
    Int? maximum_number_alignment
    Int? for_anchoring_alignment
    Int? maximum_allowed_read
    Int? budget_singleend_alignment
    Int? the_number_threads
  }
  command <<<
    deBGA \
      ~{if defined(minimum_length_valid) then ("-k " +  '"' + minimum_length_valid + '"') else ""} \
      ~{if defined(number_iterations_reseeding) then ("-s " +  '"' + number_iterations_reseeding + '"') else ""} \
      ~{if defined(minimum_interval_seeding) then ("-i " +  '"' + minimum_interval_seeding + '"') else ""} \
      ~{if defined(maximum_allowed_number) then ("-n " +  '"' + maximum_allowed_number + '"') else ""} \
      ~{if defined(threshold_edit_distance) then ("-c " +  '"' + threshold_edit_distance + '"') else ""} \
      ~{if defined(cl) then ("--cl " +  '"' + cl + '"') else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if defined(local_match) then ("--local-match " +  '"' + local_match + '"') else ""} \
      ~{if defined(local_mismatch) then ("--local-mismatch " +  '"' + local_mismatch + '"') else ""} \
      ~{if defined(local_gap_open) then ("--local-gap-open " +  '"' + local_gap_open + '"') else ""} \
      ~{if defined(local_gap_extension) then ("--local-gap-extension " +  '"' + local_gap_extension + '"') else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if defined(upper_limit_insert) then ("-u " +  '"' + upper_limit_insert + '"') else ""} \
      ~{if defined(lower_limit_insert) then ("-f " +  '"' + lower_limit_insert + '"') else ""} \
      ~{if defined(maximum_number_alignment) then ("-o " +  '"' + maximum_number_alignment + '"') else ""} \
      ~{if defined(for_anchoring_alignment) then ("-x " +  '"' + for_anchoring_alignment + '"') else ""} \
      ~{if defined(maximum_allowed_read) then ("-l " +  '"' + maximum_allowed_read + '"') else ""} \
      ~{if defined(budget_singleend_alignment) then ("-e " +  '"' + budget_singleend_alignment + '"') else ""} \
      ~{if defined(the_number_threads) then ("-p " +  '"' + the_number_threads + '"') else ""}
  >>>
  parameter_meta {
    minimum_length_valid: "the minimum length of a valid Uni-MEM seed [21-28]"
    number_iterations_reseeding: "the number of iterations of re-seeding [4]"
    minimum_interval_seeding: "the minimum interval of seeding [5]"
    maximum_allowed_number: "the maximum allowed number of hits per seed [300]"
    threshold_edit_distance: "the threshold on the edit distance for early stop [0.05]"
    cl: "the adjusted threshold on the edit distance for early stop [0.00]"
    local: "the local alignment option for confident alignment"
    local_match: "the score for a matched base in the local alignment [1]"
    local_mismatch: "the penalty for a mismatched base in the local alignment [4]"
    local_gap_open: "the penalty for a gap open in the local alignment [6]"
    local_gap_extension: "the penalty for gap extension in the local alignment [1]"
    stdout: "(default: not set) output alignments by stdout"
    upper_limit_insert: "the upper limit of insert size (only for pair-end reads) [700]"
    lower_limit_insert: "the lower limit of insert size (only for pair-end reads) [300]"
    maximum_number_alignment: "the maximum number of alignment output [20]"
    for_anchoring_alignment: "the maximum number of alignment output for anchoring alignment [150]"
    maximum_allowed_read: "the maximum allowed read length [512]"
    budget_singleend_alignment: "the budget for single-end alignment [100]"
    the_number_threads: "the number of threads [1]"
  }
  output {
    File out_stdout = stdout()
  }
}