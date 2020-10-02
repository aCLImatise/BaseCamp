class: CommandLineTool
id: positions2snv_alignment.pl.cwl
inputs:
- id: in_input
  doc: ':  Input file (snv_align-positions.tsv generated by snv pipeline)'
  type: boolean
  inputBinding:
    prefix: --input
- id: in_output
  doc: ':  Output file name'
  type: File
  inputBinding:
    prefix: --output
- id: in_format
  doc: ':  Alignment format (default phylip)'
  type: boolean
  inputBinding:
    prefix: --format
- id: in_keep_all
  doc: ': Keep all positions in alignment'
  type: boolean
  inputBinding:
    prefix: --keep-all
- id: in_reference_name
  doc: ': Use passed name instead of default for reference'
  type: boolean
  inputBinding:
    prefix: --reference-name
- id: in_verbose
  doc: ': Print more information'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: ':  Output file name'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- positions2snv_alignment.pl
