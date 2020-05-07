version 1.0

task LinguisticSequenceComplexity.py {
  input {
    String sequenceSequence
  }
  command <<<
    linguistic_sequence_complexity.py \
      ~{if defined(sequenceSequence) then ("--sequence " +  '"' + sequenceSequence + '"') else ""}
  >>>
}