version 1.0

task RiboSim {
  input {
    String? output_directory_default
    String? verbosity
    String? frequency
    String? end_length
    String? seed
    String fast_a
  }
  command <<<
    ribo sim \
      ~{fast_a} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(frequency) then ("--frequency " +  '"' + frequency + '"') else ""} \
      ~{if defined(end_length) then ("--end_length " +  '"' + end_length + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    output_directory_default: "output directory; default: /tmp/tmpdvlbjbbn"
    verbosity: "Logger writes debug to file in output dir; this sets verbosity level sent to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default: 2"
    frequency: "Probability of mutated basesdefault: 0.01"
    end_length: "if value given, only mutated the ends of the sequences and ignore the middledefault: None"
    seed: "cause reproduciblity; default: None"
    fast_a: "(multi)fasta file containing the sequences to be mutated"
  }
}