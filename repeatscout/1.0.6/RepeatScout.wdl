version 1.0

task RepeatScout {
  input {
    Boolean? size_extend_left
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
    String? sequence
    String? var_output
    String? freq
    String? var_18
    String? opts
  }
  command <<<
    RepeatScout \
      ~{opts} \
      ~{true="-L" false="" size_extend_left} \
      ~{true="-match" false="" match} \
      ~{true="-mismatch" false="" mismatch} \
      ~{true="-gap" false="" gap} \
      ~{true="-maxgap" false="" max_gap} \
      ~{true="-maxoccurrences" false="" max_occurrences} \
      ~{true="-maxrepeats" false="" max_repeats} \
      ~{true="-cappenalty" false="" cap_penalty} \
      ~{true="-tandemdist" false="" tandem_dist} \
      ~{true="-minthresh" false="" min_thresh} \
      ~{true="-minimprovement" false="" min_improvement} \
      ~{true="-stopafter" false="" stop_after} \
      ~{true="-goodlength" false="" good_length} \
      ~{true="-maxentropy" false="" max_entropy} \
      ~{true="-v" false="" how_verbose_you} \
      ~{if defined(sequence) then ("-sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(var_output) then ("-output " +  '"' + var_output + '"') else ""} \
      ~{if defined(freq) then ("-freq " +  '"' + freq + '"') else ""} \
      ~{if defined(var_18) then ("-l " +  '"' + var_18 + '"') else ""}
  >>>
  parameter_meta {
    size_extend_left: "# size of region to extend left or right (10000) "
    match: "# reward for a match (+1)  "
    mismatch: "# penalty for a mismatch (-1) "
    gap: "# penalty for a gap (-5)"
    max_gap: "# maximum number of gaps allowed (5) "
    max_occurrences: "# cap on the number of sequences to align (10,000) "
    max_repeats: "# stop work after reporting this number of repeats (10000)"
    cap_penalty: "# cap on penalty for exiting alignment of a sequence (-20)"
    tandem_dist: "# of bases that must intervene between two l-mers for both to be counted (500)"
    min_thresh: "# stop if fewer than this number of l-mers are found in the seeding phase (3)"
    min_improvement: "# amount that a the alignment needs to improve each step to be considered progress (3)"
    stop_after: "# stop the alignment after this number of no-progress columns (100)"
    good_length: "# minimum required length for a sequence to be reported (50)"
    max_entropy: "# entropy (complexity) threshold for an l-mer to be considered (-.7)"
    how_verbose_you: "[v[v[v]]] How verbose do you want it to be?  -vvvv is super-verbose."
    sequence: ""
    var_output: ""
    freq: ""
    var_18: ""
    opts: ""
  }
}