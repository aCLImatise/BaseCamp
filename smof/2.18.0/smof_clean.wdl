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
    Int? col_width
    Boolean? standardize
    String input_fasta_default
  }
  command <<<
    smof clean \
      ~{input_fasta_default} \
      ~{if defined(_type_np) then ("-t " +  '"' + _type_np + '"') else ""} \
      ~{if (to_upper) then "--toupper" else ""} \
      ~{if (to_lower) then "--tolower" else ""} \
      ~{if (to_seq) then "--toseq" else ""} \
      ~{if (reduce_header) then "--reduce-header" else ""} \
      ~{if (mask_irregular) then "--mask-irregular" else ""} \
      ~{if (mask_lowercase) then "--mask-lowercase" else ""} \
      ~{if defined(col_width) then ("--col_width " +  '"' + col_width + '"') else ""} \
      ~{if (standardize) then "--standardize" else ""}
  >>>
  parameter_meta {
    _type_np: "|p, --type n|p    sequence type"
    to_upper: "convert to uppercase"
    to_lower: "convert to lowercase"
    to_seq: "removes all non-letter characters (gaps, stops, etc.)"
    reduce_header: "Remove all text from header that follows the first\\nword (delimited by [ |])"
    mask_irregular: "converts irregular letters to unknown"
    mask_lowercase: "convert lower-case to unknown"
    col_width: "width of the sequence output (0 indicates no wrapping)"
    standardize: "Convert 'X' in DNA to 'N' and '[._]' to '-' (for gaps)"
    input_fasta_default: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}