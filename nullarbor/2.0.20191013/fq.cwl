class: CommandLineTool
id: ../../../fq.cwl
inputs:
- id: quiet
  doc: "!        Quiet mode: no progress output (default '0')."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: ref
  doc: Reference FASTA file OR size in bp (default '').
  type: string
  inputBinding:
    prefix: --ref
- id: hist
  doc: Length histogram (NO LONGER SUPPORTED) (default '0').
  type: boolean
  inputBinding:
    prefix: --hist
- id: file_dot_fq_vertical_line_file_dot_fq_do_tgz_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fq
