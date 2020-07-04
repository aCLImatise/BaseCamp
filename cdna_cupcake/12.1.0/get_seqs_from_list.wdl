version 1.0

task GetSeqsFromList.py {
  input {
    Boolean? partial
    String get
    String sequences
    String var_3
    String var_4
    String fast_a_slash_fast_q
    File file
    String var_7
    String var_8
    String list
  }
  command <<<
    get_seqs_from_list.py \
      ~{get} \
      ~{sequences} \
      ~{var_3} \
      ~{var_4} \
      ~{fast_a_slash_fast_q} \
      ~{file} \
      ~{var_7} \
      ~{var_8} \
      ~{list} \
      ~{true="--partial" false="" partial}
  >>>
  parameter_meta {
    partial: ""
    get: ""
    sequences: ""
    var_3: ""
    var_4: ""
    fast_a_slash_fast_q: ""
    file: ""
    var_7: ""
    var_8: ""
    list: ""
  }
}