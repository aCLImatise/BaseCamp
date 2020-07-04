version 1.0

task LinguisticSequenceComplexity.py {
  input {
    String? sequence
  }
  command <<<
    linguistic_sequence_complexity.py \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  parameter_meta {
    sequence: "input vcf file (default: None)"
  }
}