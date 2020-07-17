version 1.0

task Tabview {
  input {
    String? encoding
    String? delimiter
    String? quoting
    String? start_pos
    String? width
    Boolean? double_width
    String? quote_char
    File filename
  }
  command <<<
    tabview \
      ~{filename} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(quoting) then ("--quoting " +  '"' + quoting + '"') else ""} \
      ~{if defined(start_pos) then ("--start_pos " +  '"' + start_pos + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{true="--double_width" false="" double_width} \
      ~{if defined(quote_char) then ("--quote-char " +  '"' + quote_char + '"') else ""}
  >>>
  parameter_meta {
    encoding: "Encoding, if required. If the file is UTF-8, Latin-1(iso8859-1) or a few other common encodings, it should be detected automatically. If not, you can pass 'CP720', or 'iso8859-2', for example."
    delimiter: "CSV delimiter. Not typically necessary since automatic delimiter sniffing is used."
    quoting: "CSV quoting style. Not typically required."
    start_pos: "Initial cursor display position. Single number for just y (row) position, or two comma-separated numbers (--start_pos 2,3) for both. Alternatively, you can pass the numbers in the more classic +y:[x] format without the --start_pos label. Like 'tabview <fn> +5:10'"
    width: "Specify column width. 'max' or 'mode' (default) for variable widths, or an integer value for fixed column width."
    double_width: "Force full handling of double-width characters for large files (with a performance penalty)"
    quote_char: "Quote character. Not typically necessary."
    filename: "File to read. Use '-' to read from the standard input instead."
  }
}