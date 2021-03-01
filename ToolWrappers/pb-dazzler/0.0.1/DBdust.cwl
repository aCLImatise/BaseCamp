class: CommandLineTool
id: DBdust.cwl
inputs:
- id: in_dust_algorithm_window
  doc: ': DUST algorithm window size.'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_dust_algorithm_threshold
  doc: ': DUST algorithm threshold.'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_record_lowcomplexity_intervals
  doc: ': Record only low-complexity intervals >= this size.'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_take_composition_bias
  doc: ': Take into account base composition bias.'
  type: boolean?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DBdust
