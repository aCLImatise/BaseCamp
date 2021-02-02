class: CommandLineTool
id: capC_MAP_combinereps.cwl
inputs:
- id: in_configuration_file
  doc: configuration file
  type: File
  inputBinding:
    prefix: -c
- id: in_directory_containing_output
  doc: "directory containing output from capC-MAP for a replicate\n(option must appear\
    \ multiple times)."
  type: Directory
  inputBinding:
    prefix: -i
- id: in_directory_created_combined
  doc: directory to be created for combined output
  type: Directory
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_containing_output
  doc: "directory containing output from capC-MAP for a replicate\n(option must appear\
    \ multiple times)."
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_containing_output)
- id: out_directory_created_combined
  doc: directory to be created for combined output
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_created_combined)
cwlVersion: v1.1
baseCommand:
- capC-MAP
- combinereps
