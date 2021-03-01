class: CommandLineTool
id: phyluce_utilities_merge_next_seq_gzip_files.cwl
inputs:
- id: in_input
  doc: The path to a directory containing the reads to merge.
  type: File?
  inputBinding:
    prefix: --input
- id: in_config
  doc: The path to the config file to use for merging.
  type: File?
  inputBinding:
    prefix: --config
- id: in_output
  doc: The path to a directory in which to store the output.
  type: File?
  inputBinding:
    prefix: --output
- id: in_section
  doc: The section holding the merge info.
  type: string?
  inputBinding:
    prefix: --section
- id: in_verbosity
  doc: The logging level to use.
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_se
  doc: Run is single-end.
  type: boolean?
  inputBinding:
    prefix: --se
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The path to a directory in which to store the output.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_merge_next_seq_gzip_files
