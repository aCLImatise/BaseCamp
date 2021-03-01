class: CommandLineTool
id: stag_handle.pl.cwl
inputs:
- id: in_module
  doc: "|m PERLMODULE\nA module that is used to transform the input events the module\n\
    should inherit from Data::Stag::BaseHandler"
  type: boolean?
  inputBinding:
    prefix: -module
- id: in_unit
  doc: "|u NODE_NAME\n(you should always use this option if you specify -m)\nthis\
    \ is the unit that gets passed to the handler/transformer. this\nwill get set\
    \ automatically if you use the the -c, -s or -t options\nmultiple units can be\
    \ set\n-u foo -u bar -u boz"
  type: boolean?
  inputBinding:
    prefix: -unit
- id: in_writer
  doc: "|w WRITER\nwriter for final transformed tree; can be xml, sxpr or itext"
  type: boolean?
  inputBinding:
    prefix: -writer
- id: in_code_file
  doc: "|c FILE\na file containing a perlhashref containing event handlers - see\n\
    below"
  type: boolean?
  inputBinding:
    prefix: -codefile
- id: in_sub
  doc: "|s PERL\na perl hashref containing handlers"
  type: boolean?
  inputBinding:
    prefix: -sub
- id: in_trap
  doc: '|t ELEMENT=SUB'
  type: boolean?
  inputBinding:
    prefix: -trap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stag-handle.pl
