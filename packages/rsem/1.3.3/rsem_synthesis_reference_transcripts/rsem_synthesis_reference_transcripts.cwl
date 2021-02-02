class: CommandLineTool
id: rsem_synthesis_reference_transcripts.cwl
inputs:
- id: in_synthesis_ref
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_refname
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_quiet
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_has_mapping_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-synthesis-reference-transcripts
