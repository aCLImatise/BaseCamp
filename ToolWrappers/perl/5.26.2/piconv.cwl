class: CommandLineTool
id: piconv.cwl
inputs:
- id: in_list
  doc: lists all available encodings
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_resolve
  doc: resolve encoding to its (Encode) canonical name
  type: string?
  inputBinding:
    prefix: --resolve
- id: in_from
  doc: when omitted, the current locale will be used
  type: string?
  inputBinding:
    prefix: --from
- id: in_to
  doc: when omitted, the current locale will be used
  type: string?
  inputBinding:
    prefix: --to
- id: in_string
  doc: '"string" will be the input instead of STDIN or files'
  type: string?
  inputBinding:
    prefix: --string
- id: in_check_validity_input
  doc: check the validity of the input
  type: string?
  inputBinding:
    prefix: -C
- id: in_debug
  doc: show debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_scheme
  doc: use the scheme for conversion
  type: string?
  inputBinding:
    prefix: --scheme
- id: in_perl_qq
  doc: "transliterate characters missing in encoding to \\x{HHHH}\nwhere HHHH is the\
    \ hexadecimal Unicode code point"
  type: boolean?
  inputBinding:
    prefix: --perlqq
- id: in_html_cref
  doc: "transliterate characters missing in encoding to &#NNN;\nwhere NNN is the decimal\
    \ Unicode code point"
  type: boolean?
  inputBinding:
    prefix: --htmlcref
- id: in_xml_cref
  doc: "transliterate characters missing in encoding to &#xHHHH;\nwhere HHHH is the\
    \ hexadecimal Unicode code point\n"
  type: boolean?
  inputBinding:
    prefix: --xmlcref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- piconv
