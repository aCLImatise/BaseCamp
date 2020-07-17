version 1.0

task Tantan {
  input {
    Boolean? interpret_sequences_proteins
    Boolean? letter_use_masking
    Boolean? preserve_uppercaselowercase_nonmasked
    Boolean? file_selects_blosum
    Boolean? probability_repeat_starting
    Boolean? probability_repeat_ending
    Boolean? maximum_tandem_repeat
    Boolean? probability_decay_period
    Boolean? gap_existence_cost
    Boolean? gap_extension_cost
    Boolean? minimum_repeat_probability
    Boolean? output_type_masked
    String fast_a_sequence_file
  }
  command <<<
    tantan \
      ~{fast_a_sequence_file} \
      ~{true="-p" false="" interpret_sequences_proteins} \
      ~{true="-x" false="" letter_use_masking} \
      ~{true="-c" false="" preserve_uppercaselowercase_nonmasked} \
      ~{true="-m" false="" file_selects_blosum} \
      ~{true="-r" false="" probability_repeat_starting} \
      ~{true="-e" false="" probability_repeat_ending} \
      ~{true="-w" false="" maximum_tandem_repeat} \
      ~{true="-d" false="" probability_decay_period} \
      ~{true="-a" false="" gap_existence_cost} \
      ~{true="-b" false="" gap_extension_cost} \
      ~{true="-s" false="" minimum_repeat_probability} \
      ~{true="-f" false="" output_type_masked}
  >>>
  parameter_meta {
    interpret_sequences_proteins: "interpret the sequences as proteins"
    letter_use_masking: "letter to use for masking, instead of lowercase"
    preserve_uppercaselowercase_nonmasked: "preserve uppercase/lowercase in non-masked regions"
    file_selects_blosum: "file for letter pair scores (+1/-1, but -p selects BLOSUM62)"
    probability_repeat_starting: "probability of a repeat starting per position (0.005)"
    probability_repeat_ending: "probability of a repeat ending per position (0.05)"
    maximum_tandem_repeat: "maximum tandem repeat period to consider (100, but -p selects 50)"
    probability_decay_period: "probability decay per period (0.9)"
    gap_existence_cost: "gap existence cost (0)"
    gap_extension_cost: "gap extension cost (infinite: no gaps)"
    minimum_repeat_probability: "minimum repeat probability for masking (0.5)"
    output_type_masked: "output type: 0=masked sequence, 1=repeat probabilities, 2=repeat counts, 3=BED (0)"
    fast_a_sequence_file: ""
  }
}