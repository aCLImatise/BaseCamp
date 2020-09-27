class: CommandLineTool
id: scompare.cwl
inputs:
- id: in_output_given_structure
  doc: ': Output of given structure in ordered pairs (needed for comppair)'
  type: File
  inputBinding:
    prefix: -s
- id: in_ensure_selection_results
  doc: ': Ensure that pin selection results in something near X Mbytes memory'
  type: long
  inputBinding:
    prefix: -M
- id: in_cyk_int_pins
  doc: ': do CYK and use <int> pins from trusted alignment'
  type: long
  inputBinding:
    prefix: -C
- id: in_cyk_use_predicted
  doc: ': do CYK and use <int> predicted pins )'
  type: long
  inputBinding:
    prefix: -P
- id: in_full_sankoff_constraints
  doc: ': do full sankoff (no constraints)'
  type: boolean
  inputBinding:
    prefix: -f
- id: in__print_traceback
  doc: ': print traceback'
  type: boolean
  inputBinding:
    prefix: -t
- id: in__debugging_output
  doc: ': debugging output'
  type: boolean
  inputBinding:
    prefix: -d
- id: in__verbose_output
  doc: ': verbose output'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_suppress_extra_output
  doc: ': suppress extra output'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_test_msa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scompare
