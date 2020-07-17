version 1.0

task AlfredPwalign {
  input {
    Boolean? arg_gap_open
    Boolean? arg_gap_extension
    Boolean? _arg_match
    Boolean? _arg_mismatch
    Boolean? p
    Boolean? q
    Boolean? _local_alignment
    Boolean? f
    Boolean? arg_verticalhorizontal_alignment
    String seq_one_dot_fast_a
    String seq_two_dot_fast_a
  }
  command <<<
    alfred pwalign \
      ~{seq_one_dot_fast_a} \
      ~{seq_two_dot_fast_a} \
      ~{true="-g" false="" arg_gap_open} \
      ~{true="-e" false="" arg_gap_extension} \
      ~{true="-m" false="" _arg_match} \
      ~{true="-n" false="" _arg_mismatch} \
      ~{true="-p" false="" p} \
      ~{true="-q" false="" q} \
      ~{true="-l" false="" _local_alignment} \
      ~{true="-f" false="" f} \
      ~{true="-a" false="" arg_verticalhorizontal_alignment}
  >>>
  parameter_meta {
    arg_gap_open: "[ --gapopen ] arg (=-10)           gap open"
    arg_gap_extension: "[ --gapext ] arg (=-1)             gap extension"
    _arg_match: "[ --match ] arg (=5)               match"
    _arg_mismatch: "[ --mismatch ] arg (=-4)           mismatch"
    p: "[ --endsfree1 ]                    leading/trailing gaps free for seq1"
    q: "[ --endsfree2 ]                    leading/trailing gaps free for seq2"
    _local_alignment: "[ --local ]                        local alignment"
    f: "[ --format ] arg (=h)              output format [v|h]"
    arg_verticalhorizontal_alignment: "[ --alignment ] arg (=\"al.fa.gz\")  vertical/horizontal alignment"
    seq_one_dot_fast_a: ""
    seq_two_dot_fast_a: ""
  }
}