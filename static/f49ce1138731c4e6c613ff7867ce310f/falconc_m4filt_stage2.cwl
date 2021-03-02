class: CommandLineTool
id: falconc_m4filt_stage2.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__minidt_float
  doc: =, --minIdt=          float   90.0      set minIdt
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__bestn_bestn
  doc: =, --bestN=           int     10        set bestN
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_blacklist_in
  doc: =          string  REQUIRED  set blacklistIn
  type: boolean?
  inputBinding:
    prefix: --blacklistIn
- id: in__filteredoutput_string
  doc: =, --filteredOutput=  string  REQUIRED  set filteredOutput
  type: boolean?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- falconc
- m4filt-stage2
