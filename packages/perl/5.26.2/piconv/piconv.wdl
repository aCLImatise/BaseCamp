version 1.0

task Piconv {
  input {
    Boolean? list
    String? resolve
    String? from
    String? to
    String? will_input_instead
    String? c_check_validity
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
      ~{if defined(will_input_instead) then ("--string " +  '"' + will_input_instead + '"') else ""} \
      ~{if defined(c_check_validity) then ("-C " +  '"' + c_check_validity + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(scheme) then ("--scheme " +  '"' + scheme + '"') else ""} \
      ~{if (perl_qq) then "--perlqq" else ""} \
      ~{if (html_cref) then "--htmlcref" else ""} \
      ~{if (xml_cref) then "--xmlcref" else ""}
  >>>
  parameter_meta {
    list: "lists all available encodings"
    resolve: "resolve encoding to its (Encode) canonical name"
    from: "when omitted, the current locale will be used"
    to: "when omitted, the current locale will be used"
    will_input_instead: "\\\"string\\\" will be the input instead of STDIN or files"
    c_check_validity: "| -c           check the validity of the input"
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