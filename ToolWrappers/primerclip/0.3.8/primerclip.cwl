class: CommandLineTool
id: primerclip.cwl
inputs:
- id: in_bed_pe
  doc: "add this switch to use BEDPE coordinate input format\n(default format is master\
    \ file)"
  type: boolean
  inputBinding:
    prefix: --bedpe
- id: in_single_end
  doc: "add this switch to trim primers from single-end\nalignments\n"
  type: boolean
  inputBinding:
    prefix: --single-end
- id: in_output_sam_filename
  doc: Trim PCR primer sequences from aligned reads
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- primerclip
