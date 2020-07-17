version 1.0

task RagoutOverlap {
  input {
    Boolean? detect_km_er
    Boolean? hist
    String overlap
    String fast_a_in
    String dot_out
    Int min_k
    Int max_k
  }
  command <<<
    ragout-overlap \
      ~{overlap} \
      ~{fast_a_in} \
      ~{dot_out} \
      ~{min_k} \
      ~{max_k} \
      ~{true="--detect-kmer" false="" detect_km_er} \
      ~{true="--hist" false="" hist}
  >>>
  parameter_meta {
    detect_km_er: ""
    hist: ""
    overlap: ""
    fast_a_in: ""
    dot_out: ""
    min_k: ""
    max_k: ""
  }
}