version 1.0

task GetSeqStatspy {
  input {
    String? b
    String summarize
    String sequence
    String lengths
    String in
    String fast_a_slash_fast_q
    File filename
  }
  command <<<
    get_seq_stats_py \
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
  output {
    File out_stdout = stdout()
  }
}