class: CommandLineTool
id: remove_tradis_tags.cwl
inputs:
- id: in_fastq_file_tradis
  doc: ': fastq file with tradis tags'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in__tag_remove
  doc: ': tag to remove'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_number_mismatches_allow
  doc: ': number of mismatches to allow when matching tag (optional. default = 0)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_output_file_name
  doc: ': output file name (optional. default: <file>.rmtag.fastq)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_remove_tags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: ': output file name (optional. default: <file>.rmtag.fastq)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- remove_tradis_tags
