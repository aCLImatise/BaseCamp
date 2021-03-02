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
    Boolean? allow_ambiguity_codes
    Boolean? f
    Boolean? arg_verticalhorizontal_alignment
    Int seq_one_dot_fast_a
    Int seq_two_dot_fast_a
  }
  command <<<
    alfred pwalign \
      ~{seq_one_dot_fast_a} \
      ~{seq_two_dot_fast_a} \
      ~{if (arg_gap_open) then "-g" else ""} \
      ~{if (arg_gap_extension) then "-e" else ""} \
      ~{if (_arg_match) then "-m" else ""} \
      ~{if (_arg_mismatch) then "-n" else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if (_local_alignment) then "-l" else ""} \
      ~{if (allow_ambiguity_codes) then "-k" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (arg_verticalhorizontal_alignment) then "-a" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alfred:0.2.3--hf3ca161_0"
  }
  parameter_meta {
    arg_gap_open: "[ --gapopen ] arg (=-10)           gap open"
    arg_gap_extension: "[ --gapext ] arg (=-1)             gap extension"
    _arg_match: "[ --match ] arg (=5)               match"
    _arg_mismatch: "[ --mismatch ] arg (=-4)           mismatch"
    p: "[ --endsfree1 ]                    leading/trailing gaps free for seq1"
    q: "[ --endsfree2 ]                    leading/trailing gaps free for seq2"
    _local_alignment: "[ --local ]                        local alignment"
    allow_ambiguity_codes: "[ --ambiguous ]                    allow IUPAC ambiguity codes"
    f: "[ --format ] arg (=h)              output format [v|h]"
    arg_verticalhorizontal_alignment: "[ --alignment ] arg (=\\\"al.fa.gz\\\")  vertical/horizontal alignment"
    seq_one_dot_fast_a: ""
    seq_two_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}