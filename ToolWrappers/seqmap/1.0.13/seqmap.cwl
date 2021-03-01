class: CommandLineTool
id: seqmap.cwl
inputs:
- id: in_number_of_mismatches
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_probe_fast_a_file_name
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_transcript_fast_a_file_name
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_output_file_name
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- seqmap
