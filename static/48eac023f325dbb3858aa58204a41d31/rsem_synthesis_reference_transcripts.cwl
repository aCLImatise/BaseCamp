class: CommandLineTool
id: ../../../rsem_synthesis_reference_transcripts.cwl
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
- id: quiet
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: has_mapping_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-synthesis-reference-transcripts
