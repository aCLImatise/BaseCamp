version 1.0

task SmofClean {
  input {
    String? _type_np
    Boolean? to_upper
    Boolean? to_lower
    Boolean? to_seq
    Boolean? reduce_header
    Boolean? mask_irregular
    Boolean? mask_lowercase
    String? col_width
    Boolean? standardize
    String input_fasta_sequence
  }
  command <<<
    smof clean \
      ~{input_fasta_sequence} \
      ~{if defined(_type_np) then ("-t " +  '"' + _type_np + '"') else ""} \
      ~{true="--toupper" false="" to_upper} \
      ~{true="--tolower" false="" to_lower} \
      ~{true="--toseq" false="" to_seq} \
      ~{true="--reduce-header" false="" reduce_header} \
      ~{true="--mask-irregular" false="" mask_irregular} \
      ~{true="--mask-lowercase" false="" mask_lowercase} \
      ~{if defined(col_width) then ("--col_width " +  '"' + col_width + '"') else ""} \
      ~{true="--standardize" false="" standardize}
  >>>
  parameter_meta {
    _type_np: "|p, --type n|p    sequence type"
    to_upper: "convert to uppercase"
    to_lower: "convert to lowercase"
    to_seq: "removes all non-letter characters (gaps, stops, etc.)"
    reduce_header: "Remove all text from header that follows the first word (delimited by [ |])"
    mask_irregular: "converts irregular letters to unknown"
    mask_lowercase: "convert lower-case to unknown"
    col_width: "width of the sequence output (0 indicates no wrapping)"
    standardize: "Convert 'X' in DNA to 'N' and '[._]' to '-' (for gaps)"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}