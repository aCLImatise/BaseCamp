version 1.0

task GetFastaFromIds.pyOut {
  input {
    Boolean? v
    String get_fasta_from_ids_do_tpy
    String list
    String fast_a
    String? out
  }
  command <<<
    getFastaFromIds.py out \
      ~{get_fasta_from_ids_do_tpy} \
      ~{list} \
      ~{fast_a} \
      ~{out} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
    get_fasta_from_ids_do_tpy: ""
    list: ""
    fast_a: ""
    out: ""
  }
}