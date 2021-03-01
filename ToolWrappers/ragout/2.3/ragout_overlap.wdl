version 1.0

task Ragoutoverlap {
  input {
    Boolean? hist
    Boolean? detect_km_er
    String overlap
    String fast_a_in
    String dot_out
    String min_k
    String max_k
  }
  command <<<
    ragout_overlap \
      ~{overlap} \
      ~{fast_a_in} \
      ~{dot_out} \
      ~{min_k} \
      ~{max_k} \
      ~{if (hist) then "--hist" else ""} \
      ~{if (detect_km_er) then "--detect-kmer" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hist: ""
    detect_km_er: ""
    overlap: ""
    fast_a_in: ""
    dot_out: ""
    min_k: ""
    max_k: ""
  }
  output {
    File out_stdout = stdout()
  }
}