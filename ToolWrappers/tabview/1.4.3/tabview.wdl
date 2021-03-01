version 1.0

task Tabview {
  input {
    File? encoding
    String? delimiter
    String? quoting
    Int? start_pos
    Int? width
    Boolean? double_width
    String? quote_char
    String instead_dot
  }
  command <<<
    tabview \
      ~{instead_dot} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(quoting) then ("--quoting " +  '"' + quoting + '"') else ""} \
      ~{if defined(start_pos) then ("--start_pos " +  '"' + start_pos + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (double_width) then "--double_width" else ""} \
      ~{if defined(quote_char) then ("--quote-char " +  '"' + quote_char + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    encoding: "Encoding, if required. If the file is UTF-8,\\nLatin-1(iso8859-1) or a few other common encodings, it\\nshould be detected automatically. If not, you can pass\\n'CP720', or 'iso8859-2', for example."
    delimiter: "CSV delimiter. Not typically necessary since automatic\\ndelimiter sniffing is used."
    quoting: "CSV quoting style. Not typically required."
    start_pos: "Initial cursor display position. Single number for\\njust y (row) position, or two comma-separated numbers\\n(--start_pos 2,3) for both. Alternatively, you can\\npass the numbers in the more classic +y:[x] format\\nwithout the --start_pos label. Like 'tabview <fn>\\n+5:10'"
    width: "Specify column width. 'max' or 'mode' (default) for\\nvariable widths, or an integer value for fixed column\\nwidth."
    double_width: "Force full handling of double-width characters for\\nlarge files (with a performance penalty)"
    quote_char: "Quote character. Not typically necessary.\\n"
    instead_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}