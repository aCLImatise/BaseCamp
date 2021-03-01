class: CommandLineTool
id: long_fastx.cwl
inputs:
- id: in_longest
  doc: Percentage of longest reads to partition.
  type: string?
  inputBinding:
    prefix: --longest
- id: in_bases
  doc: Maximum number of bases (subject to at least one read.)
  type: long?
  inputBinding:
    prefix: --bases
- id: in_others
  doc: Write all other reads to file.
  type: File?
  inputBinding:
    prefix: --others
- id: in_input
  doc: Input .fasta/q file.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output .fasta file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pomoxis:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- long_fastx
