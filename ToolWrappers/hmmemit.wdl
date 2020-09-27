version 1.0

task Hmmemit {
  input {
    File? send_sequence_output
    Int? number_seqs_sample
    Boolean? _emit_alignment
    Boolean? emit_simple_sequence
    Boolean? emit_minl_minu
    Boolean? sample_sequences_profile
    Int? set_expected_length
    Boolean? local
    Boolean? uni_local
    Boolean? g_local
    Boolean? unig_local
    Float? min_l
    Float? minu
    Int? seed
    Boolean? options
  }
  command <<<
    hmmemit \
      ~{if defined(send_sequence_output) then ("-o " +  '"' + send_sequence_output + '"') else ""} \
      ~{if defined(number_seqs_sample) then ("-N " +  '"' + number_seqs_sample + '"') else ""} \
      ~{if (_emit_alignment) then "-a" else ""} \
      ~{if (emit_simple_sequence) then "-c" else ""} \
      ~{if (emit_minl_minu) then "-C" else ""} \
      ~{if (sample_sequences_profile) then "-p" else ""} \
      ~{if defined(set_expected_length) then ("-L " +  '"' + set_expected_length + '"') else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (uni_local) then "--unilocal" else ""} \
      ~{if (g_local) then "--glocal" else ""} \
      ~{if (unig_local) then "--uniglocal" else ""} \
      ~{if defined(min_l) then ("--minl " +  '"' + min_l + '"') else ""} \
      ~{if defined(minu) then ("--minu " +  '"' + minu + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    send_sequence_output: ": send sequence output to file <f>, not stdout"
    number_seqs_sample: ": number of seqs to sample  [1]  (n>0)"
    _emit_alignment: ": emit alignment"
    emit_simple_sequence: ": emit simple majority-rule consensus sequence"
    emit_minl_minu: ": emit fancier consensus sequence (req's --minl, --minu)"
    sample_sequences_profile: ": sample sequences from profile, not core model"
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
  output {
    File out_stdout = stdout()
    File out_send_sequence_output = "${in_send_sequence_output}"
  }
}