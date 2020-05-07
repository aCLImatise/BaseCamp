class: CommandLineTool
id: ananse_network.cwl
inputs:
- id: motifs
  doc: PWM
  type: File
  inputBinding:
    prefix: --motifs
- id: n_core
  doc: Number of core used
  type: string
  inputBinding:
    prefix: --ncore
- id: e
  doc: '[FILE [FILE ...]], --expression [FILE [FILE ...]] Expression scores'
  type: boolean
  inputBinding:
    prefix: -e
- id: c
  doc: '[FILE [FILE ...]], --corrfiles [FILE [FILE ...]] Files with correlation'
  type: boolean
  inputBinding:
    prefix: -c
- id: b
  doc: '[FILE [FILE ...]], --binding [FILE [FILE ...]] All TFs binding file'
  type: boolean
  inputBinding:
    prefix: -b
- id: promoter
  doc: Calculate promoter and expression network
  type: string
  inputBinding:
    prefix: --promoter
- id: annotation
  doc: Gene annotation in BED12 format
  type: string
  inputBinding:
    prefix: --annotation
- id: genome
  doc: Genome
  type: string
  inputBinding:
    prefix: --genome
- id: impute
  doc: Impute missing values
  type: boolean
  inputBinding:
    prefix: --impute
- id: output
  doc: Output file
  type: File
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- ananse
- network
