version 1.0

task Motiph {
  input {
    Float? pseudo_count
    Float? output_p_thresh
    Float? output_q_thresh
    String? seed
    Boolean? text
    Boolean? verbosity
    String alignment
    String tree
    String motif
  }
  command <<<
    motiph \
      ~{alignment} \
      ~{tree} \
      ~{motif} \
      ~{if defined(pseudo_count) then ("--pseudocount " +  '"' + pseudo_count + '"') else ""} \
      ~{if defined(output_p_thresh) then ("--output-pthresh " +  '"' + output_p_thresh + '"') else ""} \
      ~{if defined(output_q_thresh) then ("--output-qthresh " +  '"' + output_q_thresh + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--text" false="" text} \
      ~{true="--verbosity" false="" verbosity}
  >>>
  parameter_meta {
    pseudo_count: "(default=0.1)"
    output_p_thresh: "(default 1e-4)"
    output_q_thresh: "(default 1.0)"
    seed: "(default from time())"
    text: "(default false)"
    verbosity: "[1|2|3|4] (default 2)"
    alignment: ""
    tree: ""
    motif: ""
  }
}