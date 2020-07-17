version 1.0

task BpMrtrans.pl {
  input {
    File? _output_filename
    String? of
    File? _input_filename
    String? input_sequence_format
    File? seq_db
    Boolean? seq_format
    String? var_6
    String? var_output
    String? var_8
    String? var_9
    String? database
    String? var_11
    String? var_12
  }
  command <<<
    bp_mrtrans.pl \
      ~{var_6} \
      ~{var_output} \
      ~{var_8} \
      ~{var_9} \
      ~{database} \
      ~{var_11} \
      ~{var_12} \
      ~{if defined(_output_filename) then ("-o " +  '"' + _output_filename + '"') else ""} \
      ~{if defined(of) then ("-of " +  '"' + of + '"') else ""} \
      ~{if defined(_input_filename) then ("-i " +  '"' + _input_filename + '"') else ""} \
      ~{if defined(input_sequence_format) then ("-if " +  '"' + input_sequence_format + '"') else ""} \
      ~{if defined(seq_db) then ("--seqdb " +  '"' + seq_db + '"') else ""} \
      ~{true="--seqformat" false="" seq_format}
  >>>
  parameter_meta {
    _output_filename: "- the output filename [default STDOUT]"
    of: "- output sequence format (multiple sequence alignment) [default phylip]"
    _input_filename: "- the input filename [required]"
    input_sequence_format: "- input sequence format (multiple sequence alignment) [ default clustalw]"
    seq_db: "- the cDNA sequence database file"
    seq_format: "- the cDNA seq db format (flatfile sequence format)"
    var_6: ""
    var_output: ""
    var_8: ""
    var_9: ""
    database: ""
    var_11: ""
    var_12: ""
  }
}