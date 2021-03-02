class: CommandLineTool
id: pblayout_m4_index.cwl
inputs:
- id: in_piles
  doc: STR  Path to a file with a list of read names for which to fetch the piles.
    One read name per line.
  type: boolean?
  inputBinding:
    prefix: --piles
- id: in_in_do_tm_four
  doc: STR  Input M4.
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbipa:1.3.2--hee625c5_0
cwlVersion: v1.1
baseCommand:
- pblayout
- m4-index
