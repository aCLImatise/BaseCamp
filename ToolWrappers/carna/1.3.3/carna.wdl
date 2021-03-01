version 1.0

task Carna {
  input {
    Int? match
    Int? mismatch
    File? ribo_sum_file
    Boolean? use_ribo_sum
    Int? in_del
    Int? in_del_opening
    Int? struct_weight
    String? exp_prob
    Int? tau
    Boolean? gist
    Int? width
    File? clustal
    File? pp
    Boolean? write_structure
    Int? min_prob
    Int? max_bps_length_ratio
    Int? max_diff_am
    Int? max_diff
    Int? max_diff_at_am
    Boolean? no_lp
    Int? max_bp_span
    Boolean? relaxed_anchors
    Boolean? ignore_constraints
    String? lb
    String? ub
    Int? c_d
    Int? time_limit
    String verbose
  }
  command <<<
    carna \
      ~{verbose} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(ribo_sum_file) then ("--ribosum-file " +  '"' + ribo_sum_file + '"') else ""} \
      ~{if defined(use_ribo_sum) then ("--use-ribosum " +  '"' + use_ribo_sum + '"') else ""} \
      ~{if defined(in_del) then ("--indel " +  '"' + in_del + '"') else ""} \
      ~{if defined(in_del_opening) then ("--indel-opening " +  '"' + in_del_opening + '"') else ""} \
      ~{if defined(struct_weight) then ("--struct-weight " +  '"' + struct_weight + '"') else ""} \
      ~{if defined(exp_prob) then ("--exp-prob " +  '"' + exp_prob + '"') else ""} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{if (gist) then "--gist" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(clustal) then ("--clustal " +  '"' + clustal + '"') else ""} \
      ~{if defined(pp) then ("--pp " +  '"' + pp + '"') else ""} \
      ~{if (write_structure) then "--write-structure" else ""} \
      ~{if defined(min_prob) then ("--min-prob " +  '"' + min_prob + '"') else ""} \
      ~{if defined(max_bps_length_ratio) then ("--max-bps-length-ratio " +  '"' + max_bps_length_ratio + '"') else ""} \
      ~{if defined(max_diff_am) then ("--max-diff-am " +  '"' + max_diff_am + '"') else ""} \
      ~{if defined(max_diff) then ("--max-diff " +  '"' + max_diff + '"') else ""} \
      ~{if defined(max_diff_at_am) then ("--max-diff-at-am " +  '"' + max_diff_at_am + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{if (relaxed_anchors) then "--relaxed-anchors" else ""} \
      ~{if (ignore_constraints) then "--ignore-constraints" else ""} \
      ~{if defined(lb) then ("--lb " +  '"' + lb + '"') else ""} \
      ~{if defined(ub) then ("--ub " +  '"' + ub + '"') else ""} \
      ~{if defined(c_d) then ("--c_d " +  '"' + c_d + '"') else ""} \
      ~{if defined(time_limit) then ("--time-limit " +  '"' + time_limit + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    match: "(50)\\nMatch score"
    mismatch: "(0)\\nMismatch score"
    ribo_sum_file: "(RIBOSUM85_60)\\nRibosum file"
    use_ribo_sum: "(true)\\nUse ribosum scores"
    in_del: "(-350)\\nIndel score"
    in_del_opening: "(-500)\\nIndel opening score"
    struct_weight: "(200)\\nMaximal weight of 1/2 arc match"
    exp_prob: "Expected probability"
    tau: "(0)\\nTau factor in percent"
    gist: "Use gist for graphical search (feature disabled, recompile to activate)."
    width: "(120)\\nOutput width"
    clustal: "Clustal output"
    pp: "PP output"
    write_structure: "Write guidance structure in output"
    min_prob: "(0.01)\\nMinimal probability"
    max_bps_length_ratio: "(0.0)\\nMaximal ratio of #base pairs divided by sequence length (default: no\\neffect)"
    max_diff_am: "(-1)\\nMaximal difference for sizes of matched arcs"
    max_diff: "(-1)\\nMaximal difference for alignment cuts"
    max_diff_at_am: "(-1)\\nMaximal difference for alignment traces, only at arc match positions"
    no_lp: "No lonely pairs (only used when predicing ensemble porobabilities and for\\ncompatibility with locarna; otherwise no effect)"
    max_bp_span: "(-1)\\nLimit maximum base pair span (default=off)"
    relaxed_anchors: "Relax anchor constraints (default=off)"
    ignore_constraints: "Ignore constraints in pp-file"
    lb: "Lower score bound"
    ub: "Upper score bound"
    c_d: "(1)\\nRecomputation distance"
    time_limit: "(300000)\\nTime limit in ms (always search first solution; turn off by 0)."
    verbose: "RNA sequences and pair probabilities:"
  }
  output {
    File out_stdout = stdout()
  }
}