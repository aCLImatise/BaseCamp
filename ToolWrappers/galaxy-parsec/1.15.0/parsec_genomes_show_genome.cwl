class: CommandLineTool
id: parsec_genomes_show_genome.cwl
inputs:
- id: in_num
  doc: num
  type: long?
  inputBinding:
    prefix: --num
- id: in_chrom
  doc: chrom
  type: string?
  inputBinding:
    prefix: --chrom
- id: in_low
  doc: low
  type: string?
  inputBinding:
    prefix: --low
- id: in_high
  doc: high
  type: string?
  inputBinding:
    prefix: --high
- id: in_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- genomes
- show_genome
