class: CommandLineTool
id: cooltools_genome_binnify.cwl
inputs:
- id: in_chrom_sizes_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_binsize
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
  dockerPull: quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0
cwlVersion: v1.1
baseCommand:
- cooltools
- genome
- binnify
