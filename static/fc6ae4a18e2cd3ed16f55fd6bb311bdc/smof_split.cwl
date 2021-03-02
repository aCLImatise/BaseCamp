class: CommandLineTool
id: smof_split.cwl
inputs:
- id: in_number
  doc: Number of output files or sequences per file
  type: long?
  inputBinding:
    prefix: --number
- id: in_seqs
  doc: split by maximum sequences per file
  type: boolean?
  inputBinding:
    prefix: --seqs
- id: in_prefix
  doc: "prefix for output files (default=\"xxx\")\n"
  type: string?
  inputBinding:
    prefix: --prefix
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
- split
