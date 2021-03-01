class: CommandLineTool
id: bp_heterogeneity_test.pl.cwl
inputs:
- id: in_sample_size
  doc: mutation count
  type: string?
  inputBinding:
    prefix: --samplesize
- id: in_mut_non
  doc: mutation count
  type: string?
  inputBinding:
    prefix: --mutnon
- id: in_iterations
  doc: of iterations
  type: string?
  inputBinding:
    prefix: --iterations
- id: in_observed
  doc: observed D
  type: string?
  inputBinding:
    prefix: --observed
- id: in_method
  doc: tajimaD or fuD  for Tajima's D or Fu and Li's D
  type: string?
  inputBinding:
    prefix: --method
- id: in_verbose
  doc: print out extra verbose messages
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_silent
  doc: Be extra quiet
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_precision
  doc: "Level of precision - specify the number of digits\n(default 4)"
  type: boolean?
  inputBinding:
    prefix: --precision
- id: in_description
  doc: "This is an implementation of the Heterogenetity test as described in\nHahn\
    \ MW, Rausher MD, and Cunningham CW. 2002. Genetics 161(1):11-20."
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: Options in brackets above are optional
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_heterogeneity_test.pl
