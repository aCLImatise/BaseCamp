class: CommandLineTool
id: seqmagick_primer_trim_forward_primer.cwl
inputs:
- id: in_reverse_is_rev_comp
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --reverse-is-revcomp
- id: in_seq_magick
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_primer_trim
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqmagick:0.8.4--py_1
cwlVersion: v1.1
baseCommand:
- seqmagick
- primer-trim
- forward_primer
