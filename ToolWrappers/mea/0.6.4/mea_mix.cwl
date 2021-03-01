class: CommandLineTool
id: mea_mix.cwl
inputs:
- id: in_gamma_one
  doc: "base pair weight factor, first pair probabilities\n(default=`1.0')"
  type: long?
  inputBinding:
    prefix: --gamma1
- id: in_gamma_two
  doc: "base pair weight factor, second pair probabilities\n(default=`1.0')"
  type: long?
  inputBinding:
    prefix: --gamma2
- id: in_reference
  doc: "Reference structure; if given, then output TP FP FN\nTN SENS PPV F1 MCC"
  type: long?
  inputBinding:
    prefix: --reference
- id: in_no_slide_rule
  doc: 'Use slide rule [default: use slide rule]'
  type: boolean?
  inputBinding:
    prefix: --no-slide-rule
- id: in_no_conflict_rule
  doc: 'Use conflict rule [default: use conflict rule]'
  type: boolean?
  inputBinding:
    prefix: --no-conflict-rule
- id: in_verbose
  doc: Turn on verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_me_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dotplot_one_filename
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_dotplot_two_filename
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mea_mix
