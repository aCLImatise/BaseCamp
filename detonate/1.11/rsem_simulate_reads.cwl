class: CommandLineTool
id: rsem_simulate_reads.cwl
inputs:
- id: reference_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: estimated_model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: estimated_isoform_results
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: the_ta0
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: output_name
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: seed
  doc: ''
  type: string
  inputBinding:
    prefix: --seed
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-simulate-reads
