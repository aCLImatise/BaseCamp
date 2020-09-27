class: CommandLineTool
id: filter_tradis_tags.cwl
inputs:
- id: in_fastq_file_tradis
  doc: ': fastq file with tradis tags attached'
  type: boolean
  inputBinding:
    prefix: -f
- id: in__tag_search
  doc: ': tag to search for'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_number_allow_matching
  doc: ': number of mismatches to allow when matching tag (optional. default = 0)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_output_file_name
  doc: ': output file name (optional. default: <file>.tag.fastq)'
  type: File
  inputBinding:
    prefix: -o
- id: in_b
  doc: ''
  type: File
  inputBinding:
    prefix: -b
- id: in_filter_tags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: ': output file name (optional. default: <file>.tag.fastq)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- filter_tradis_tags
