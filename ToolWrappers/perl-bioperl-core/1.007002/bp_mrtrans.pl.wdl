version 1.0

task BpMrtranspl {
  input {
    File? _output_filename
    String? of
    File? _input_filename
    String? input_sequence_formatmultiple
    File? seq_db
    Boolean? seq_format
    String coordinates
  }
  command <<<
    bp_mrtrans_pl \
      ~{coordinates} \
      ~{if defined(_output_filename) then ("-o " +  '"' + _output_filename + '"') else ""} \
      ~{if defined(of) then ("-of " +  '"' + of + '"') else ""} \
      ~{if defined(_input_filename) then ("-i " +  '"' + _input_filename + '"') else ""} \
      ~{if defined(input_sequence_formatmultiple) then ("-if " +  '"' + input_sequence_formatmultiple + '"') else ""} \
      ~{if defined(seq_db) then ("--seqdb " +  '"' + seq_db + '"') else ""} \
      ~{if (seq_format) then "--seqformat" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _output_filename: "- the output filename [default STDOUT]"
    of: "- output sequence format\\n(multiple sequence alignment)\\n[default phylip]"
    _input_filename: "- the input filename [required]"
    input_sequence_formatmultiple: "- input sequence format\\n(multiple sequence alignment)\\n[ default clustalw]"
    seq_db: "- the cDNA sequence database file"
    seq_format: "- the cDNA seq db format (flatfile sequence format)"
    coordinates: "SYNOPSIS"
  }
  output {
    File out_stdout = stdout()
    File out__output_filename = "${in__output_filename}"
  }
}