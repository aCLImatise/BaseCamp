class: CommandLineTool
id: generateMFI.py.cwl
inputs:
- id: in_file_location_flow
  doc: File location for the Flow Result file.
  type: File
  inputBinding:
    prefix: -i
- id: in_what_calculate_centroids
  doc: what to calculate for centroids.
  type: string
  inputBinding:
    prefix: -M
- id: in_file_location_mfi
  doc: File location for the MFI output file.
  type: File
  inputBinding:
    prefix: -o
- id: in_remove_columns
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_location_mfi
  doc: File location for the MFI output file.
  type: File
  outputBinding:
    glob: $(inputs.in_file_location_mfi)
cwlVersion: v1.1
baseCommand:
- generateMFI.py
