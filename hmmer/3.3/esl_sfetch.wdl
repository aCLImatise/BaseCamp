version 1.0

task EslSfetch {
  input {
    String? output_sequences_file
    Boolean? output_sequence_file
    String? rename_sequence_s
    Boolean? reverse_complement_seqs
    String? in_format
  }
  command <<<
    esl-sfetch \
      ~{if defined(output_sequences_file) then ("-o " +  '"' + output_sequences_file + '"') else ""} \
      ~{true="-O" false="" output_sequence_file} \
      ~{if defined(rename_sequence_s) then ("-n " +  '"' + rename_sequence_s + '"') else ""} \
      ~{true="-r" false="" reverse_complement_seqs} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""}
  >>>
  parameter_meta {
    output_sequences_file: ": output sequences to file <f> instead of stdout"
    output_sequence_file: ": output sequence to file named <key>"
    rename_sequence_s: ": rename the sequence <s>"
    reverse_complement_seqs: ": reverse complement the seq(s)"
    in_format: ": specify that input file is in format <s>"
  }
}