class: CommandLineTool
id: cooler_digest_order..cwl
inputs:
- id: in_cooler
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_digest
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_chrom_sizes_path
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fast_a_path
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_enzyme
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooler:0.8.10--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cooler
- digest
- order.
