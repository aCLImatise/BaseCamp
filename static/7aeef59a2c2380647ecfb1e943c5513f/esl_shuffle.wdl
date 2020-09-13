version 1.0

task Eslshuffle {
  input {
    File? direct_output_data
    Int? generate_n_samples
    Int? truncate_outputs_length
    Boolean? shuffle_preserving_composition
    Boolean? shuffle_preserving_
    Int? shuffle_nonoverlapping_nmers
    Boolean? generate_order_markov
    Boolean? generate_st_order
    Boolean? _reverse_input
    Int? regionally_shuffle_inputs
    Boolean? take_bootstrapping_samples
    Boolean? shuffle_residues_independently
    Boolean? rna
    Boolean? dna
    Boolean? amino
    Int? seed
    File? in_format
    Boolean? g
    Boolean? a
  }
  command <<<
    esl_shuffle \
      ~{if defined(direct_output_data) then ("-o " +  '"' + direct_output_data + '"') else ""} \
      ~{if defined(generate_n_samples) then ("-N " +  '"' + generate_n_samples + '"') else ""} \
      ~{if defined(truncate_outputs_length) then ("-L " +  '"' + truncate_outputs_length + '"') else ""} \
      ~{if (shuffle_preserving_composition) then "-m" else ""} \
      ~{if (shuffle_preserving_) then "-d" else ""} \
      ~{if defined(shuffle_nonoverlapping_nmers) then ("-k " +  '"' + shuffle_nonoverlapping_nmers + '"') else ""} \
      ~{if (generate_order_markov) then "-0" else ""} \
      ~{if (generate_st_order) then "-1" else ""} \
      ~{if (_reverse_input) then "-r" else ""} \
      ~{if defined(regionally_shuffle_inputs) then ("-w " +  '"' + regionally_shuffle_inputs + '"') else ""} \
      ~{if (take_bootstrapping_samples) then "-b" else ""} \
      ~{if (shuffle_residues_independently) then "-v" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (g) then "-G" else ""} \
      ~{if (a) then "-A" else ""}
  >>>
  parameter_meta {
    direct_output_data: ": direct output data to file <f>"
    generate_n_samples: ": generate <n> samples (per input seq/msa)  [1]  (n>0)"
    truncate_outputs_length: ": truncate outputs to length <n>  [0]  (n>=0)"
    shuffle_preserving_composition: ": shuffle preserving monoresidue composition  [default]"
    shuffle_preserving_: ": shuffle preserving mono- and di-residue composition"
    shuffle_nonoverlapping_nmers: ": shuffle nonoverlapping <n>-mers  (n>0)"
    generate_order_markov: ": generate with 0th order Markov properties per input"
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
    g: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
    File out_direct_output_data = "${in_direct_output_data}"
  }
}