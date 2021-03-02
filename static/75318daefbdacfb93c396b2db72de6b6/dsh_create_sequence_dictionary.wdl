version 1.0

task Dshcreatesequencedictionary {
  input {
    Boolean? about
    Boolean? input_fast_a_file
    File? output_sequence_dictionary_file
    String? args
  }
  command <<<
    dsh_create_sequence_dictionary \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_fast_a_file) then "--input-fasta-file" else ""} \
      ~{if (output_sequence_dictionary_file) then "--output-sequence-dictionary-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.2--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_fast_a_file: "[class java.io.File]  input FASTA file, default stdin [optional]"
    output_sequence_dictionary_file: "[class java.io.File]  output SequenceDictionary .dict file, default stdout [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_sequence_dictionary_file = "${in_output_sequence_dictionary_file}"
  }
}