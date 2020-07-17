version 1.0

task Prettyalign {
  input {
    Boolean? output_fastalike_format
    Boolean? ig_format_turn
    Boolean? toggle_output_column
    Boolean? toggle_sequence_index
    Boolean? toggle_sequence_id
    Boolean? maxinserts_max_number
    Boolean? linelength_characters_line
    Boolean? space_char_char
    Boolean? max_length_maximum
    Boolean? output_blaststyle_format
    Boolean? sequence_i_d
    Boolean? nn_how_number
    File filename
  }
  command <<<
    prettyalign \
      ~{filename} \
      ~{true="-f" false="" output_fastalike_format} \
      ~{true="-I" false="" ig_format_turn} \
      ~{true="-c" false="" toggle_output_column} \
      ~{true="-n" false="" toggle_sequence_index} \
      ~{true="-i" false="" toggle_sequence_id} \
      ~{true="-m" false="" maxinserts_max_number} \
      ~{true="-l" false="" linelength_characters_line} \
      ~{true="-s" false="" space_char_char} \
      ~{true="-L" false="" max_length_maximum} \
      ~{true="-b" false="" output_blaststyle_format} \
      ~{true="-R" false="" sequence_i_d} \
      ~{true="-N" false="" nn_how_number}
  >>>
  parameter_meta {
    output_fastalike_format: "Output in a FASTA-like format (off)."
    ig_format_turn: "IG format (off), turn off column index."
    toggle_output_column: "Toggle output column indices (on)."
    toggle_sequence_index: "Toggle sequence index (number) on each line (off)."
    toggle_sequence_id: "Toggle sequence ID to each line (on)."
    maxinserts_max_number: "(max-inserts)  Max number of insertions printed (2000000). -m0 Do not print insertions. -m-4 Print insert lengths with 4 digits."
    linelength_characters_line: "(linelength)   Characters per line (70)."
    space_char_char: "(space char)   Char to show inserts (`.')."
    max_length_maximum: "(max length)   Maximum length of input lines (30000)."
    output_blaststyle_format: "Output in a BLAST-style format (off)."
    sequence_i_d: "(sequence id)  Reference sequence for -b switch (first sequence)"
    nn_how_number: "(n1,n2,...,nN) How to number the first residue in each sequence when using BLAST-style output (1,1,1,...,1)"
    filename: ""
  }
}