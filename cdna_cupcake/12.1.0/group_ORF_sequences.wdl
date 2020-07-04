version 1.0

task GroupORFSequences.py {
  input {
    Boolean? is_p_bid
    String de_duplicate
    String orf
    String faa
    File file_dot
    String input_faa
    String output_prefix
  }
  command <<<
    group_ORF_sequences.py \
      ~{de_duplicate} \
      ~{orf} \
      ~{faa} \
      ~{file_dot} \
      ~{input_faa} \
      ~{output_prefix} \
      ~{true="--is_pbid" false="" is_p_bid}
  >>>
  parameter_meta {
    is_p_bid: ""
    de_duplicate: ""
    orf: ""
    faa: ""
    file_dot: ""
    input_faa: ""
    output_prefix: ""
  }
}