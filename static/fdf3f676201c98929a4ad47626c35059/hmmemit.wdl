version 1.0

task Hmmemit {
  input {
    String? send_sequence_output
    String? number_seqs_sample
    Boolean? _emit_alignment
    Boolean? emit_simple_sequence
    Boolean? emit_fancier_reqs
    Boolean? sample_sequences_model
    String? set_expected_length
    Boolean? local
    Boolean? uni_local
    Boolean? g_local
    Boolean? unig_local
    String? min_l
    String? minu
    String? seed
    Boolean? options
  }
  command <<<
    hmmemit \
      ~{if defined(send_sequence_output) then ("-o " +  '"' + send_sequence_output + '"') else ""} \
      ~{if defined(number_seqs_sample) then ("-N " +  '"' + number_seqs_sample + '"') else ""} \
      ~{true="-a" false="" _emit_alignment} \
      ~{true="-c" false="" emit_simple_sequence} \
      ~{true="-C" false="" emit_fancier_reqs} \
      ~{true="-p" false="" sample_sequences_model} \
      ~{if defined(set_expected_length) then ("-L " +  '"' + set_expected_length + '"') else ""} \
      ~{true="--local" false="" local} \
      ~{true="--unilocal" false="" uni_local} \
      ~{true="--glocal" false="" g_local} \
      ~{true="--uniglocal" false="" unig_local} \
      ~{if defined(min_l) then ("--minl " +  '"' + min_l + '"') else ""} \
      ~{if defined(minu) then ("--minu " +  '"' + minu + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    send_sequence_output: ": send sequence output to file <f>, not stdout"
    number_seqs_sample: ": number of seqs to sample  [1]  (n>0)"
    _emit_alignment: ": emit alignment"
    emit_simple_sequence: ": emit simple majority-rule consensus sequence"
    emit_fancier_reqs: ": emit fancier consensus sequence (req's --minl, --minu)"
    sample_sequences_model: ": sample sequences from profile, not core model"
    set_expected_length: ": set expected length from profile to <n>  [400]"
    local: ": configure profile in multihit local mode  [default]"
    uni_local: ": configure profile in unilocal mode"
    g_local: ": configure profile in multihit glocal mode"
    unig_local: ": configure profile in unihit glocal mode"
    min_l: ": show consensus as 'any' (X/N) unless >= this fraction  [0.0]"
    minu: ": show consensus as upper case if >= this fraction  [0.0]"
    seed: ": set RNG seed to <n>  [0]  (n>=0)"
    options: ""
  }
}