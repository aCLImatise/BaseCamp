version 1.0

task RandomlySelectSequences.py {
  input {
    String randomly
    String select
    String n
    String sequences
    String from
    String fast_a_slash_fast_q
    File files
  }
  command <<<
    randomly_select_sequences.py \
      ~{randomly} \
      ~{select} \
      ~{n} \
      ~{sequences} \
      ~{from} \
      ~{fast_a_slash_fast_q} \
      ~{files}
  >>>
  parameter_meta {
    randomly: ""
    select: ""
    n: ""
    sequences: ""
    from: ""
    fast_a_slash_fast_q: ""
    files: ""
  }
}