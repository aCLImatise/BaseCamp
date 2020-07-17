class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rsem_synthesis_reference_transcripts.cwl
inputs:
- id: synthesis_ref
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: refname
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: minimum_length
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: quiet
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: has_mapping_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-synthesis-reference-transcripts
