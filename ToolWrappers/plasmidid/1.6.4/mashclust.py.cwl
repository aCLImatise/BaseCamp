class: CommandLineTool
id: mashclust.py.cwl
inputs:
- id: in_input
  doc: REQUIRED.Input FASTA file
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output directory to extract clusteres FASTA
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_distance
  doc: "Threshold distance to cluster sequences[0-1]\n0(identical) 1(unrelated) (default\
    \ 0.5)"
  type: double?
  inputBinding:
    prefix: --distance
- id: in_output_grouped
  doc: Output clustered (non representative sequences
  type: boolean?
  inputBinding:
    prefix: --output_grouped
- id: in_common_mash_reference_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory to extract clusteres FASTA
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.4--1
cwlVersion: v1.1
baseCommand:
- mashclust.py
