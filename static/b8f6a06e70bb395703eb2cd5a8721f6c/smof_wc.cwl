class: CommandLineTool
id: smof_wc.cwl
inputs:
- id: in_chars
  doc: writes the summed length of all sequences
  type: boolean?
  inputBinding:
    prefix: --chars
- id: in_lines
  doc: writes the total number of sequences
  type: boolean?
  inputBinding:
    prefix: --lines
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smof:2.21.1--py_0
cwlVersion: v1.1
baseCommand:
- smof
- wc
