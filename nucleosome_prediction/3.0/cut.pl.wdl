version 1.0

task Cutpl {
  input {
    Boolean? quiet_mode_turn
    Int? set_number_row
    String? change_input_output_delimiter
    String? di
    String? do
    Boolean? _suppress_blanks
    Boolean? invert_use_complement
    Boolean? tight_tell_script
    Int? specify_column_ranges
    String? specify_columns_names
    File? file
    Boolean? zerobased_column_numbers
    Boolean? preserve_empty_values
    Boolean? sk
    String input_dot
  }
  command <<<
    cut_pl \
      ~{input_dot} \
      ~{if (quiet_mode_turn) then "-q" else ""} \
      ~{if defined(set_number_row) then ("-h " +  '"' + set_number_row + '"') else ""} \
      ~{if defined(change_input_output_delimiter) then ("-d " +  '"' + change_input_output_delimiter + '"') else ""} \
      ~{if defined(di) then ("-di " +  '"' + di + '"') else ""} \
      ~{if defined(do) then ("-do " +  '"' + do + '"') else ""} \
      ~{if (_suppress_blanks) then "-s" else ""} \
      ~{if (invert_use_complement) then "-i" else ""} \
      ~{if (tight_tell_script) then "-t" else ""} \
      ~{if defined(specify_column_ranges) then ("-f " +  '"' + specify_column_ranges + '"') else ""} \
      ~{if defined(specify_columns_names) then ("-n " +  '"' + specify_columns_names + '"') else ""} \
      ~{if defined(file) then ("-file " +  '"' + file + '"') else ""} \
      ~{if (zerobased_column_numbers) then "-0" else ""} \
      ~{if (preserve_empty_values) then "-e" else ""} \
      ~{if (sk) then "-sk" else ""}
  >>>
  parameter_meta {
    quiet_mode_turn: ": Quiet mode: turn verbosity off (default verbose)"
    set_number_row: ": Set the number of row headers to NUM (default 0)."
    change_input_output_delimiter: ": Change the input and output delimiter to DELIM (default <tab>)."
    di: ": Change the input delimiter to DELIM (default <tab>)."
    do: ": Change the output delimiter to DELIM (default <tab>)."
    _suppress_blanks: ":        Suppress blanks"
    invert_use_complement: ":        Invert. Use the complement of the fields specified in -f."
    tight_tell_script: ":        Tight.  Tell the script to expect different number of columns in\\neach row so that it needs to recompute the column boundaries for\\neach row.  Note this option slows the script down somewhat."
    specify_column_ranges: ": specify column ranges to include.  RANGES are comma-\\nseperated lists of single columns or a range of columns\\nfor example:\\n5-6,2,1-3\\nwould select columns 1 through 6 except column 4.  Note\\nthat 2 is redundantly specified by no error results."
    specify_columns_names: ":  specify columns by names (instead of by numbers with -f). Assumes\\nthe first line is a header, and translates column names in <str>\\ninto their respective column numbers in the header. Supports\\nmultiple ranges. Column names are assumed to be unique and not to\\ncontain any commas."
    file: ": get column names (as in -n) from specified file. each column name\\nshould appear on a separate line."
    zerobased_column_numbers: ":        zero-based column numbers."
    preserve_empty_values: ":        preserve empty values."
    sk: ":       number of header columns (default 0)"
    input_dot: "OPTIONS are:"
  }
  output {
    File out_stdout = stdout()
  }
}