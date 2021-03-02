class: CommandLineTool
id: yara_indexer.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
- id: in_verbose
  doc: Displays verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output_prefix
  doc: "Specify a filename prefix for the reference genome index. Default:\nuse the\
    \ filename prefix of the reference genome."
  type: File?
  inputBinding:
    prefix: --output-prefix
- id: in_tmp_dir
  doc: "Specify a temporary directory where to construct the index. Default:\nuse\
    \ the output directory."
  type: Directory?
  inputBinding:
    prefix: --tmp-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_tmp_dir
  doc: "Specify a temporary directory where to construct the index. Default:\nuse\
    \ the output directory."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_tmp_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- yara_indexer
