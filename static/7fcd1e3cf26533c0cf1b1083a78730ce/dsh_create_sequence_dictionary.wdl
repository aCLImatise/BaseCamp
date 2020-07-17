version 1.0

task DshCreateSequenceDictionary {
  input {
    Boolean? about
    Boolean? input_fast_a_file
    Boolean? output_sequence_dictionary_file
    String? args
  }
  command <<<
    dsh-create-sequence-dictionary \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-fasta-file" false="" input_fast_a_file} \
      ~{true="--output-sequence-dictionary-file" false="" output_sequence_dictionary_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_fast_a_file: "[class java.io.File]  input FASTA file, default stdin [optional]"
    output_sequence_dictionary_file: "[class java.io.File]  output SequenceDictionary .dict file, default stdout [optional]"
    args: ""
  }
}