class: CommandLineTool
id: yara_indexer.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: verbose
  doc: Displays verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: output_prefix
  doc: 'Specify a filename prefix for the reference genome index. Default: use the
    filename prefix of the reference genome.'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: tmp_dir
  doc: 'Specify a temporary directory where to construct the index. Default: use the
    output directory.'
  type: string
  inputBinding:
    prefix: --tmp-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- yara_indexer
