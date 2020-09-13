version 1.0

task Motiph {
  input {
    Float? bg
    String? column_freqs
    Float? fg
    String? gap
    Float? gap_cost
    Boolean? hb
    Int? model
    Float? pur_pyr
    Float? transition_transversion
    String? ustar
    String? defaultall
    File? b_file
    Boolean? list
    Boolean? no_q_value
    Boolean? norc
    String? flip
    Int? bls_dist
    Boolean? max_stored_scores
    String? o
    String? oc
    Boolean? print_col_freqs
    Boolean? print_trimmed_tree
    Float? pseudo_count
    Float? output_p_thresh
    Float? output_q_thresh
    String? seed
    Boolean? text
    Boolean? verbosity
    String alignment
    String tree
    String var_30
  }
  command <<<
    motiph \
      ~{alignment} \
      ~{tree} \
      ~{var_30} \
      ~{if defined(bg) then ("--bg " +  '"' + bg + '"') else ""} \
      ~{if defined(column_freqs) then ("--column-freqs " +  '"' + column_freqs + '"') else ""} \
      ~{if defined(fg) then ("--fg " +  '"' + fg + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(gap_cost) then ("--gap-cost " +  '"' + gap_cost + '"') else ""} \
      ~{if (hb) then "--hb" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(pur_pyr) then ("--pur-pyr " +  '"' + pur_pyr + '"') else ""} \
      ~{if defined(transition_transversion) then ("--transition-transversion " +  '"' + transition_transversion + '"') else ""} \
      ~{if defined(ustar) then ("--ustar " +  '"' + ustar + '"') else ""} \
      ~{if defined(defaultall) then ("--motif " +  '"' + defaultall + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (no_q_value) then "--no-qvalue" else ""} \
      ~{if (norc) then "--norc" else ""} \
      ~{if defined(flip) then ("--flip " +  '"' + flip + '"') else ""} \
      ~{if defined(bls_dist) then ("--bls-dist " +  '"' + bls_dist + '"') else ""} \
      ~{if (max_stored_scores) then "--max-stored-scores" else ""} \
      ~{if defined(o) then ("--o " +  '"' + o + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if (print_col_freqs) then "--print-col-freqs" else ""} \
      ~{if (print_trimmed_tree) then "--print-trimmed-tree" else ""} \
      ~{if defined(pseudo_count) then ("--pseudocount " +  '"' + pseudo_count + '"') else ""} \
      ~{if defined(output_p_thresh) then ("--output-pthresh " +  '"' + output_p_thresh + '"') else ""} \
      ~{if defined(output_q_thresh) then ("--output-qthresh " +  '"' + output_q_thresh + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (verbosity) then "--verbosity" else ""}
  >>>
  parameter_meta {
    bg: "(default=1.0)"
    column_freqs: "|empirical (default=simulated)"
    fg: "(default=1.0)"
    gap: "| fixed | wildcard | minimum (default=skip)"
    gap_cost: "(default=0.0)"
    hb: "(defalut false)"
    model: "|single|average|jc|k2|f81|f84|hky|tn (default=f81)"
    pur_pyr: "(default=1.0)"
    transition_transversion: "(default=0.5)"
    ustar: ""
    defaultall: "(default=all)"
    b_file: "(default from motif file)"
    list: ""
    no_q_value: "(default false)"
    norc: "(default false)"
    flip: "|false (Allow BLS matches in reverse. Default: true)"
    bls_dist: "(Distance threshold for BLS. Default:20)"
    max_stored_scores: "(Default 100,000)"
    o: "(default=motiph_out)"
    oc: "(default=motiph_out)"
    print_col_freqs: ""
    print_trimmed_tree: ""
    pseudo_count: "(default=0.1)"
    output_p_thresh: "(default 1e-4)"
    output_q_thresh: "(default 1.0)"
    seed: "(default from time())"
    text: "(default false)"
    verbosity: "[1|2|3|4] (default 2)"
    alignment: ""
    tree: ""
    var_30: ""
  }
  output {
    File out_stdout = stdout()
  }
}