class: CommandLineTool
id: smof_translate.cwl
inputs:
- id: in_from_start
  doc: Require each product begin with a start codon
  type: boolean?
  inputBinding:
    prefix: --from-start
- id: in_all_frames
  doc: Translate in all frames, keep longest
  type: boolean?
  inputBinding:
    prefix: --all-frames
- id: in_cds
  doc: Write the DNA coding sequence
  type: boolean?
  inputBinding:
    prefix: --cds
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
- translate
