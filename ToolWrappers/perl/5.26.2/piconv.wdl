version 1.0

task Piconv {
  input {
    Boolean? list
    String? resolve
    String? from
    String? to
    String? be_input_stdin
    String? check_validity_input
    Boolean? debug
    String? scheme
    Boolean? perl_qq
    Boolean? html_cref
    Boolean? xml_cref
  }
  command <<<
    piconv \
      ~{if (list) then "--list" else ""} \
      ~{if defined(resolve) then ("--resolve " +  '"' + resolve + '"') else ""} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""} \
      ~{if defined(be_input_stdin) then ("--string " +  '"' + be_input_stdin + '"') else ""} \
      ~{if defined(check_validity_input) then ("-C " +  '"' + check_validity_input + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(scheme) then ("--scheme " +  '"' + scheme + '"') else ""} \
      ~{if (perl_qq) then "--perlqq" else ""} \
      ~{if (html_cref) then "--htmlcref" else ""} \
      ~{if (xml_cref) then "--xmlcref" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list: "lists all available encodings"
    resolve: "resolve encoding to its (Encode) canonical name"
    from: "when omitted, the current locale will be used"
    to: "when omitted, the current locale will be used"
    be_input_stdin: "\\\"string\\\" will be the input instead of STDIN or files"
    check_validity_input: "check the validity of the input"
    debug: "show debug information"
    scheme: "use the scheme for conversion"
    perl_qq: "transliterate characters missing in encoding to \\x{HHHH}\\nwhere HHHH is the hexadecimal Unicode code point"
    html_cref: "transliterate characters missing in encoding to &#NNN;\\nwhere NNN is the decimal Unicode code point"
    xml_cref: "transliterate characters missing in encoding to &#xHHHH;\\nwhere HHHH is the hexadecimal Unicode code point\\n"
  }
  output {
    File out_stdout = stdout()
  }
}