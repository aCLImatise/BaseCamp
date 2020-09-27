class: CommandLineTool
id: phyluce_utilities_sample_reads_from_files.cwl
inputs:
- id: in_conf
  doc: The path to the config file giving reads to sample
  type: File
  inputBinding:
    prefix: --conf
- id: in_path_output_directory
  doc: The path to output directory
  type: File
  inputBinding:
    prefix: --output
- id: in_optional_arguments
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_directory
  doc: The path to output directory
  type: File
  outputBinding:
    glob: $(inputs.in_path_output_directory)
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_sample_reads_from_files
