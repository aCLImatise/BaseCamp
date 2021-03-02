class: CommandLineTool
id: get_gff_info_split.cwl
inputs:
- id: in_verbose
  doc: 'Prefix for the file name in output  [default: split]'
  type: File?
  inputBinding:
    prefix: --verbose
- id: in_number
  doc: "Number of chunks into which split the GFF file\n[default: 10]"
  type: long?
  inputBinding:
    prefix: --number
- id: in_gzip
  doc: gzip output files
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_gff_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_verbose
  doc: 'Prefix for the file name in output  [default: split]'
  type: File?
  outputBinding:
    glob: $(inputs.in_verbose)
hints: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- split
