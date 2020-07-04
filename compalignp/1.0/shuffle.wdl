version 1.0

task Shuffle {
  input {
    Boolean? shuffle_preserve_
    Boolean? generate_markov_properties
    Boolean? generate_same_st
    Boolean? make_iid_sequences
    Boolean? _reverse_inputs
    String? regionally_shuffle_inputs
    Boolean? make_when_set
    Boolean? alignment
    Boolean? amino
    Boolean? dna
    String? in_format
    Boolean? nodes_c
    Boolean? q_rna
    String? seed
    Boolean? options
    String seq_file
  }
  command <<<
    shuffle \
      ~{seq_file} \
      ~{true="-d" false="" shuffle_preserve_} \
      ~{true="-0" false="" generate_markov_properties} \
      ~{true="-1" false="" generate_same_st} \
      ~{true="-l" false="" make_iid_sequences} \
      ~{true="-r" false="" _reverse_inputs} \
      ~{if defined(regionally_shuffle_inputs) then ("-w " +  '"' + regionally_shuffle_inputs + '"') else ""} \
      ~{true="-i" false="" make_when_set} \
      ~{true="--alignment" false="" alignment} \
      ~{true="--amino" false="" amino} \
      ~{true="--dna" false="" dna} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--nodesc" false="" nodes_c} \
      ~{true="--qrna" false="" q_rna} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    shuffle_preserve_: ": shuffle but preserve both mono- and di-symbol composition"
    generate_markov_properties: ": generate with same 0th order Markov properties as each input"
    generate_same_st: ": generate with same 1st order Markov properties as each input"
    make_iid_sequences: ": make iid sequences of same number and length as inputs"
    _reverse_inputs: ": reverse inputs"
    regionally_shuffle_inputs: ": regionally shuffle inputs in window size <n>"
    make_when_set: ": make [-n] iid seqs of length [-t] of type [--dna|--amino]; when -i is set, no <seqfile> argument is used"
    alignment: ": <seqfile> is an alignment; shuffle the columns"
    amino: ": synthesize protein sequences [default] (see -i, -l)"
    dna: ": synthesize DNA sequences (see -i, -l))"
    in_format: ": specify sequence file format <s>"
    nodes_c: ": remove sequence description lines"
    q_rna: ": <seqfile> is a QRNA/FASTA pairwise alignment file; shuffle the pairwise alignments, preserving gap position"
    seed: ": set random number seed to <s>"
    options: ""
    seq_file: ""
  }
}