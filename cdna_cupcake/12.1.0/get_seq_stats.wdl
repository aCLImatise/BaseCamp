version 1.0

task GetSeqStats.py {
  input {
    String? b
    String summarize
    String sequence
    Int lengths
    String in
    String fast_a_slash_fast_q
    File filename
  }
  command <<<
    get_seq_stats.py \
      ~{summarize} \
      ~{sequence} \
      ~{lengths} \
      ~{in} \
      ~{fast_a_slash_fast_q} \
      ~{filename} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    summarize: ""
    sequence: ""
    lengths: ""
    in: ""
    fast_a_slash_fast_q: ""
    filename: ""
  }
}