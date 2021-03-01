version 1.0

task RepeatScout {
  input {
    Boolean? size_region_extend
    Boolean? match
    Boolean? mismatch
    Boolean? gap
    Boolean? max_gap
    Boolean? max_occurrences
    Boolean? max_repeats
    Boolean? cap_penalty
    Boolean? tandem_dist
    Boolean? min_thresh
    Boolean? min_improvement
    Boolean? stop_after
    Boolean? good_length
    Boolean? max_entropy
    Boolean? how_verbose_you
    String? var_15
    String? freq
    String? var_output
    String? sequence
    String? opts
  }
  command <<<
    RepeatScout \
      ~{opts} \
      ~{if (size_region_extend) then "-L" else ""} \
      ~{if (match) then "-match" else ""} \
      ~{if (mismatch) then "-mismatch" else ""} \
      ~{if (gap) then "-gap" else ""} \
      ~{if (max_gap) then "-maxgap" else ""} \
      ~{if (max_occurrences) then "-maxoccurrences" else ""} \
      ~{if (max_repeats) then "-maxrepeats" else ""} \
      ~{if (cap_penalty) then "-cappenalty" else ""} \
      ~{if (tandem_dist) then "-tandemdist" else ""} \
      ~{if (min_thresh) then "-minthresh" else ""} \
      ~{if (min_improvement) then "-minimprovement" else ""} \
      ~{if (stop_after) then "-stopafter" else ""} \
      ~{if (good_length) then "-goodlength" else ""} \
      ~{if (max_entropy) then "-maxentropy" else ""} \
      ~{if (how_verbose_you) then "-v" else ""} \
      ~{if defined(var_15) then ("-l " +  '"' + var_15 + '"') else ""} \
      ~{if defined(freq) then ("-freq " +  '"' + freq + '"') else ""} \
      ~{if defined(var_output) then ("-output " +  '"' + var_output + '"') else ""} \
      ~{if defined(sequence) then ("-sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    size_region_extend: "# size of region to extend left or right (10000)"
    match: "# reward for a match (+1)"
    mismatch: "# penalty for a mismatch (-1)"
    gap: "# penalty for a gap (-5)"
    max_gap: "# maximum number of gaps allowed (5)"
    max_occurrences: "# cap on the number of sequences to align (10,000)"
    max_repeats: "# stop work after reporting this number of repeats (10000)"
    cap_penalty: "# cap on penalty for exiting alignment of a sequence (-20)"
    tandem_dist: "# of bases that must intervene between two l-mers for both to be counted (500)"
    min_thresh: "# stop if fewer than this number of l-mers are found in the seeding phase (3)"
    min_improvement: "# amount that a the alignment needs to improve each step to be considered progress (3)"
    stop_after: "# stop the alignment after this number of no-progress columns (100)"
    good_length: "# minimum required length for a sequence to be reported (50)"
    max_entropy: "# entropy (complexity) threshold for an l-mer to be considered (-.7)"
    how_verbose_you: "[v[v[v]]] How verbose do you want it to be?  -vvvv is super-verbose."
    var_15: ""
    freq: ""
    var_output: ""
    sequence: ""
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}