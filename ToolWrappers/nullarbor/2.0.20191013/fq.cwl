class: CommandLineTool
id: fq.cwl
inputs:
- id: in_quiet
  doc: "!        Quiet mode: no progress output (default '0')."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_ref
  doc: Reference FASTA file OR size in bp (default '').
  type: long?
  inputBinding:
    prefix: --ref
- id: in_hist
  doc: Length histogram (NO LONGER SUPPORTED) (default '0').
  type: boolean?
  inputBinding:
    prefix: --hist
- id: in_file_dot_fq_vertical_line_file_dot_fq_do_tgz_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fq
