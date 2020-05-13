class: CommandLineTool
id: LogolExec.sh.cwl
inputs:
- id: enabled_ups
  doc: ': enable duplicate result matches. By default only keep singletons'
  type: boolean
  inputBinding:
    prefix: '- enabledups'
- id: conf
  doc: ': specify configuration file'
  type: boolean
  inputBinding:
    prefix: '- conf'
- id: lmax
  doc: ': maximum length of a variable'
  type: boolean
  inputBinding:
    prefix: '- lmax'
- id: output
  doc: ': output file name, msut be unique'
  type: boolean
  inputBinding:
    prefix: '- output'
- id: uid
  doc: ': unique identifier for the query'
  type: boolean
  inputBinding:
    prefix: '- uid'
- id: lm_in
  doc: ': minimum length of a variable'
  type: boolean
  inputBinding:
    prefix: '- lmin'
- id: no_clean
  doc: ': Do not delete created files after treatment'
  type: boolean
  inputBinding:
    prefix: '- noclean'
- id: dna
  doc: ': analyse dna, is default'
  type: boolean
  inputBinding:
    prefix: '- dna'
- id: protein
  doc: ': analyse protein'
  type: boolean
  inputBinding:
    prefix: '- protein'
- id: end
  doc: ': End value on sequence'
  type: boolean
  inputBinding:
    prefix: '- end'
- id: all
  doc: ': analyse both directions of the sequence'
  type: boolean
  inputBinding:
    prefix: '- all'
- id: c
  doc: ': maximum size of a match'
  type: boolean
  inputBinding:
    prefix: '- c'
- id: rna
  doc: ': analyse rna'
  type: boolean
  inputBinding:
    prefix: '- rna'
- id: offset
  doc: ': Offset value to add to positions'
  type: boolean
  inputBinding:
    prefix: '- offset'
- id: max
  doc: ': maximum returned solutions'
  type: boolean
  inputBinding:
    prefix: '- max'
- id: max_spacer
  doc: ': maximum size of a spacer'
  type: boolean
  inputBinding:
    prefix: '- maxspacer'
- id: g
  doc: ': grammar file to analyse'
  type: boolean
  inputBinding:
    prefix: '- g'
- id: h
  doc: ': get usage'
  type: boolean
  inputBinding:
    prefix: '- h'
- id: start
  doc: ': Start value on sequence'
  type: boolean
  inputBinding:
    prefix: '- start'
- id: check
  doc: ': Check logol grammar file, only require -g option'
  type: boolean
  inputBinding:
    prefix: '- check'
- id: m
  doc: ': model file to analyse'
  type: boolean
  inputBinding:
    prefix: '- m'
- id: sequence_id
  doc: ': position of sequence in bank'
  type: boolean
  inputBinding:
    prefix: '- sequenceID'
- id: filter
  doc: ': Type of filter when enabledups is not enabled. Allowed types are exact(default),local,local0,global.'
  type: boolean
  inputBinding:
    prefix: '- filter'
- id: s
  doc: ': sequence file to analyse.'
  type: boolean
  inputBinding:
    prefix: '- s'
- id: max_res
  doc: ': maximum result size of a match'
  type: boolean
  inputBinding:
    prefix: '- maxres'
- id: v
  doc: ': get version'
  type: boolean
  inputBinding:
    prefix: '- v'
outputs: []
cwlVersion: v1.1
baseCommand:
- LogolExec.sh
