version 1.0

task EslShuffle {
  input {
    String? direct_output_data
    String? generate_n_samples
    String? truncate_outputs_length
    Boolean? shuffle_preserving_composition
    Boolean? shuffle_preserving_mono
    String? shuffle_nonoverlapping_nmers
    Boolean? generate_markov_properties
    Boolean? generate_st_order
    Boolean? _reverse_input
    String? regionally_shuffle_inputs
    Boolean? take_bootstrapping_samples
    Boolean? shuffle_residues_independently
    Boolean? rna
    Boolean? dna
    Boolean? amino
    String? seed
    String? in_format
    String seq_file
  }
  command <<<
    esl-shuffle \
      ~{seq_file} \
      ~{if defined(direct_output_data) then ("-o " +  '"' + direct_output_data + '"') else ""} \
      ~{if defined(generate_n_samples) then ("-N " +  '"' + generate_n_samples + '"') else ""} \
      ~{if defined(truncate_outputs_length) then ("-L " +  '"' + truncate_outputs_length + '"') else ""} \
      ~{true="-m" false="" shuffle_preserving_composition} \
      ~{true="-d" false="" shuffle_preserving_mono} \
      ~{if defined(shuffle_nonoverlapping_nmers) then ("-k " +  '"' + shuffle_nonoverlapping_nmers + '"') else ""} \
      ~{true="-0" false="" generate_markov_properties} \
      ~{true="-1" false="" generate_st_order} \
      ~{true="-r" false="" _reverse_input} \
      ~{if defined(regionally_shuffle_inputs) then ("-w " +  '"' + regionally_shuffle_inputs + '"') else ""} \
      ~{true="-b" false="" take_bootstrapping_samples} \
      ~{true="-v" false="" shuffle_residues_independently} \
      ~{true="--rna" false="" rna} \
      ~{true="--dna" false="" dna} \
      ~{true="--amino" false="" amino} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""}
  >>>
  parameter_meta {
    direct_output_data: ": direct output data to file <f>"
    generate_n_samples: ": generate <n> samples (per input seq/msa)  [1]  (n>0)"
    truncate_outputs_length: ": truncate outputs to length <n>  [0]  (n>=0)"
    shuffle_preserving_composition: ": shuffle preserving monoresidue composition  [default]"
    shuffle_preserving_mono: ": shuffle preserving mono- and di-residue composition"
    shuffle_nonoverlapping_nmers: ": shuffle nonoverlapping <n>-mers  (n>0)"
    generate_markov_properties: ": generate with 0th order Markov properties per input"
    generate_st_order: ": generate with 1st order Markov properties per input"
    _reverse_input: ": reverse each input"
    regionally_shuffle_inputs: ": regionally shuffle inputs in window size <n>  (n>0)"
    take_bootstrapping_samples: ": take bootstrapping samples"
    shuffle_residues_independently: ": shuffle residues in each column independently"
    rna: ": generate RNA sequence  [default]"
    dna: ": generate DNA sequence"
    amino: ": generate protein sequence"
    seed: ": set random number generator's seed to <n>  [0]  (n>=0)"
    in_format: ": specify that input file is in format <s>"
    seq_file: ""
  }
}