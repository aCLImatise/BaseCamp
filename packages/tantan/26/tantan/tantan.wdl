version 1.0

task Tantan {
  input {
    Boolean? interpret_sequences_proteins
    Boolean? letter_use_lowercase
    Boolean? preserve_uppercaselowercase_nonmasked
    Boolean? file_letterpair_score
    Boolean? probability_repeat_starting
    Boolean? probability_repeat_ending
    Boolean? maximum_tandem_repeat
    Boolean? probability_decay_period
    Boolean? match_score_blosum
    Boolean? mismatch_cost_blosum
    Boolean? gap_existence_cost
    Boolean? gap_extension_cost
    Boolean? minimum_repeat_probability
    Boolean? minimum_copy_number
    Boolean? output_type_masked
    File fast_a_sequence_file
  }
  command <<<
    tantan \
      ~{fast_a_sequence_file} \
      ~{if (interpret_sequences_proteins) then "-p" else ""} \
      ~{if (letter_use_lowercase) then "-x" else ""} \
      ~{if (preserve_uppercaselowercase_nonmasked) then "-c" else ""} \
      ~{if (file_letterpair_score) then "-m" else ""} \
      ~{if (probability_repeat_starting) then "-r" else ""} \
      ~{if (probability_repeat_ending) then "-e" else ""} \
      ~{if (maximum_tandem_repeat) then "-w" else ""} \
      ~{if (probability_decay_period) then "-d" else ""} \
      ~{if (match_score_blosum) then "-i" else ""} \
      ~{if (mismatch_cost_blosum) then "-j" else ""} \
      ~{if (gap_existence_cost) then "-a" else ""} \
      ~{if (gap_extension_cost) then "-b" else ""} \
      ~{if (minimum_repeat_probability) then "-s" else ""} \
      ~{if (minimum_copy_number) then "-n" else ""} \
      ~{if (output_type_masked) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tantan:26--he1b5a44_0"
  }
  parameter_meta {
    interpret_sequences_proteins: "interpret the sequences as proteins"
    letter_use_lowercase: "letter to use for masking, instead of lowercase"
    preserve_uppercaselowercase_nonmasked: "preserve uppercase/lowercase in non-masked regions"
    file_letterpair_score: "file for letter-pair score matrix"
    probability_repeat_starting: "probability of a repeat starting per position (0.005)"
    probability_repeat_ending: "probability of a repeat ending per position (0.05)"
    maximum_tandem_repeat: "maximum tandem repeat period to consider (100, but -p selects 50)"
    probability_decay_period: "probability decay per period (0.9)"
    match_score_blosum: "match score (BLOSUM62 if -p, else 2 if -f4, else 1)"
    mismatch_cost_blosum: "mismatch cost (BLOSUM62 if -p, else 7 if -f4, else 1)"
    gap_existence_cost: "gap existence cost (0)"
    gap_extension_cost: "gap extension cost (7 if -f4, else infinity)"
    minimum_repeat_probability: "minimum repeat probability for masking (0.5)"
    minimum_copy_number: "minimum copy number, affects -f4 only (2)"
    output_type_masked: "output type: 0=masked sequence, 1=repeat probabilities,\\n2=repeat counts, 3=BED, 4=tandem repeats (0)"
    fast_a_sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}