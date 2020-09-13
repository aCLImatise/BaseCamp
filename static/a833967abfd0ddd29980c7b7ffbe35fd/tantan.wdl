version 1.0

task Tantan {
  input {
    Boolean? interpret_sequences_proteins
    Boolean? letter_use_masking
    Boolean? preserve_uppercaselowercase_nonmasked
    Boolean? file_letter_pair
    Boolean? probability_repeat_starting
    Boolean? probability_repeat_ending
    Boolean? maximum_tandem_repeat
    Boolean? probability_decay_period
    Boolean? gap_existence_cost
    Boolean? gap_extension_cost
    Boolean? minimum_repeat_probability
    Boolean? output_type_masked
    File fast_a_sequence_file
  }
  command <<<
    tantan \
      ~{fast_a_sequence_file} \
      ~{if (interpret_sequences_proteins) then "-p" else ""} \
      ~{if (letter_use_masking) then "-x" else ""} \
      ~{if (preserve_uppercaselowercase_nonmasked) then "-c" else ""} \
      ~{if (file_letter_pair) then "-m" else ""} \
      ~{if (probability_repeat_starting) then "-r" else ""} \
      ~{if (probability_repeat_ending) then "-e" else ""} \
      ~{if (maximum_tandem_repeat) then "-w" else ""} \
      ~{if (probability_decay_period) then "-d" else ""} \
      ~{if (gap_existence_cost) then "-a" else ""} \
      ~{if (gap_extension_cost) then "-b" else ""} \
      ~{if (minimum_repeat_probability) then "-s" else ""} \
      ~{if (output_type_masked) then "-f" else ""}
  >>>
  parameter_meta {
    interpret_sequences_proteins: "interpret the sequences as proteins"
    letter_use_masking: "letter to use for masking, instead of lowercase"
    preserve_uppercaselowercase_nonmasked: "preserve uppercase/lowercase in non-masked regions"
    file_letter_pair: "file for letter pair scores (+1/-1, but -p selects BLOSUM62)"
    probability_repeat_starting: "probability of a repeat starting per position (0.005)"
    probability_repeat_ending: "probability of a repeat ending per position (0.05)"
    maximum_tandem_repeat: "maximum tandem repeat period to consider (100, but -p selects 50)"
    probability_decay_period: "probability decay per period (0.9)"
    gap_existence_cost: "gap existence cost (0)"
    gap_extension_cost: "gap extension cost (infinite: no gaps)"
    minimum_repeat_probability: "minimum repeat probability for masking (0.5)"
    output_type_masked: "output type: 0=masked sequence, 1=repeat probabilities,\\n2=repeat counts, 3=BED (0)"
    fast_a_sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}