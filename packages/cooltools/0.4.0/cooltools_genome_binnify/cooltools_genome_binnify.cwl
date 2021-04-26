class: CommandLineTool
id: cooltools_genome_binnify.cwl
inputs:
- id: in_all_names
  doc: "Parse all chromosome names from file, not only default\nr\"^chr[0-9]+$\",\
    \ r\"^chr[XY]$\", r\"^chrM$\"."
  type: boolean?
  inputBinding:
    prefix: --all-names
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
  dockerPull: quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0
cwlVersion: v1.1
baseCommand:
- cooltools
- genome
- binnify
