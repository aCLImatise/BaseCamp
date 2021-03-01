class: CommandLineTool
id: samtools_reheader.cwl
inputs:
- id: in_no_pg
  doc: Do not generate a @PG header line.
  type: boolean?
  inputBinding:
    prefix: --no-PG
- id: in_in_place
  doc: "Modify the CRAM file directly, if possible.\n(Defaults to outputting to stdout.)"
  type: boolean?
  inputBinding:
    prefix: --in-place
- id: in_command
  doc: Pass the header in SAM format to external program CMD.
  type: string?
  inputBinding:
    prefix: --command
- id: in_in_dot_header_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- samtools
- reheader
