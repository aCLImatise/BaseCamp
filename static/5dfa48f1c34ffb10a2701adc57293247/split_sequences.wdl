version 1.0

task SplitSequences.py {
  input {
    String? threshold
    String? input_sequence_file
    String? output_prefix_will
  }
  command <<<
    split_sequences.py \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(input_sequence_file) then ("--input " +  '"' + input_sequence_file + '"') else ""} \
      ~{if defined(output_prefix_will) then ("--output " +  '"' + output_prefix_will + '"') else ""}
  >>>
  parameter_meta {
    threshold: "Split based on this threshold of length"
    input_sequence_file: "INPUT sequence file (default=None)"
    output_prefix_will: "OUTPUT prefix, will write fragmentary file to OUTPUT.frag.fas and full-length file to OUTPUT.full.fas (default=output)"
  }
}