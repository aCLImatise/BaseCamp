class: CommandLineTool
id: centrifuge_sort_nt.pl.cwl
inputs:
- id: in_output_mappings_are
  doc: Output mappings that are present in sequence file to file str
  type: File?
  inputBinding:
    prefix: -m
- id: in_output_acs_mapping
  doc: Output ACs w/o mapping to file str
  type: File?
  inputBinding:
    prefix: -a
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_mapping_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_mappings_are
  doc: Output mappings that are present in sequence file to file str
  type: File?
  outputBinding:
    glob: $(inputs.in_output_mappings_are)
- id: out_output_acs_mapping
  doc: Output ACs w/o mapping to file str
  type: File?
  outputBinding:
    glob: $(inputs.in_output_acs_mapping)
hints: []
cwlVersion: v1.1
baseCommand:
- centrifuge-sort-nt.pl
