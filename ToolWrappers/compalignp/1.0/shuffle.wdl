version 1.0

task Shuffle {
  input {
    Int? make_samples_seq
    File? save_shuffled_sequences
    Int? truncatedelete_inputs_fixed
    Boolean? shuffle_preserve_
    Boolean? generate_same_order
    Boolean? generate_same_st
    Boolean? make_iid_sequences
    Boolean? _reverse_inputs
    Int? regionally_shuffle_inputs
    Boolean? make_when_set
    Boolean? alignment
    Boolean? amino
    Boolean? dna
    File? in_format
    Boolean? nodes_c
    Boolean? q_rna
    Int? seed
    Boolean? options
    String seq_file
  }
  command <<<
    shuffle \
      ~{seq_file} \
      ~{if defined(make_samples_seq) then ("-n " +  '"' + make_samples_seq + '"') else ""} \
      ~{if defined(save_shuffled_sequences) then ("-o " +  '"' + save_shuffled_sequences + '"') else ""} \
      ~{if defined(truncatedelete_inputs_fixed) then ("-t " +  '"' + truncatedelete_inputs_fixed + '"') else ""} \
      ~{if (shuffle_preserve_) then "-d" else ""} \
      ~{if (generate_same_order) then "-0" else ""} \
      ~{if (generate_same_st) then "-1" else ""} \
      ~{if (make_iid_sequences) then "-l" else ""} \
      ~{if (_reverse_inputs) then "-r" else ""} \
      ~{if defined(regionally_shuffle_inputs) then ("-w " +  '"' + regionally_shuffle_inputs + '"') else ""} \
      ~{if (make_when_set) then "-i" else ""} \
      ~{if (alignment) then "--alignment" else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (nodes_c) then "--nodesc" else ""} \
      ~{if (q_rna) then "--qrna" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    make_samples_seq: ": make <n> samples per input seq (default 1)"
    save_shuffled_sequences: ": save shuffled sequences to file <f>"
    truncatedelete_inputs_fixed: ": truncate/delete inputs to fixed length <n>"
    shuffle_preserve_: ": shuffle but preserve both mono- and di-symbol composition"
    generate_same_order: ": generate with same 0th order Markov properties as each input"
    generate_same_st: ": generate with same 1st order Markov properties as each input"
    make_iid_sequences: ": make iid sequences of same number and length as inputs"
    _reverse_inputs: ": reverse inputs"
    regionally_shuffle_inputs: ": regionally shuffle inputs in window size <n>"
    make_when_set: ": make [-n] iid seqs of length [-t] of type [--dna|--amino];\\nwhen -i is set, no <seqfile> argument is used"
    alignment: ": <seqfile> is an alignment; shuffle the columns"
    amino: ": synthesize protein sequences [default] (see -i, -l)"
    dna: ": synthesize DNA sequences (see -i, -l))"
    in_format: ": specify sequence file format <s>"
    nodes_c: ": remove sequence description lines"
    q_rna: ": <seqfile> is a QRNA/FASTA pairwise alignment file;\\nshuffle the pairwise alignments, preserving gap position"
    seed: ": set random number seed to <s>"
    options: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}