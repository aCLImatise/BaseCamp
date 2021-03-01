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
    File? b_file
    Boolean? no_q_value
    Boolean? norc
    String? flip
    Int? bls_dist
    Boolean? max_stored_scores
    Float? print_trimmed_tree
    Float? output_p_thresh
    Float? output_q_thresh
    String? seed
    Boolean? text
    String alignment
    String tree
    String motif
  }
  command <<<
    motiph \
      ~{alignment} \
      ~{tree} \
      ~{motif} \
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
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if (no_q_value) then "--no-qvalue" else ""} \
      ~{if (norc) then "--norc" else ""} \
      ~{if defined(flip) then ("--flip " +  '"' + flip + '"') else ""} \
      ~{if defined(bls_dist) then ("--bls-dist " +  '"' + bls_dist + '"') else ""} \
      ~{if (max_stored_scores) then "--max-stored-scores" else ""} \
      ~{if defined(print_trimmed_tree) then ("--print-trimmed-tree " +  '"' + print_trimmed_tree + '"') else ""} \
      ~{if defined(output_p_thresh) then ("--output-pthresh " +  '"' + output_p_thresh + '"') else ""} \
      ~{if defined(output_q_thresh) then ("--output-qthresh " +  '"' + output_q_thresh + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (text) then "--text" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    ustar: "(default=all)"
    b_file: "(default from motif file)"
    no_q_value: "(default false)"
    norc: "(default false)"
    flip: "|false (Allow BLS matches in reverse. Default: true)"
    bls_dist: "(Distance threshold for BLS. Default:20)"
    max_stored_scores: "(Default 100,000)"
    print_trimmed_tree: "(default=0.1)"
    output_p_thresh: "(default 1e-4)"
    output_q_thresh: "(default 1.0)"
    seed: "(default from time())"
    text: "(default false)"
    alignment: ""
    tree: ""
    motif: ""
  }
  output {
    File out_stdout = stdout()
  }
}