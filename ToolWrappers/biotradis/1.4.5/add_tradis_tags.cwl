class: CommandLineTool
id: add_tradis_tags.cwl
inputs:
- id: in_bam_file_tradis
  doc: ': bam file with tradis tags'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_output_bam_name
  doc: ': output BAM name (optional. default: <file>.tr.bam)'
  type: File
  inputBinding:
    prefix: -o
- id: in_verbose_debugging_output
  doc: ': verbose debugging output'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_add_tags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bam_name
  doc: ': output BAM name (optional. default: <file>.tr.bam)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_bam_name)
cwlVersion: v1.1
baseCommand:
- add_tradis_tags
