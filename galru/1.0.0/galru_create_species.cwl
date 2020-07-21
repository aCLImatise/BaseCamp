class: CommandLineTool
id: ../../../galru_create_species.cwl
inputs:
- id: output_directory
  doc: 'Output directory, defaults to species name in current directory (default:
    None)'
  type: string
  inputBinding:
    prefix: --output_directory
- id: threads
  doc: 'No. of threads to use (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: refseq_category
  doc: 'Sequencing technology (default: all)'
  type: string
  inputBinding:
    prefix: --refseq_category
- id: assembly_level
  doc: 'Assembly level (default: complete)'
  type: string
  inputBinding:
    prefix: --assembly_level
- id: cd_hit_seq_identity
  doc: 'Sequence identity for CD-hit (default: 0.99)'
  type: string
  inputBinding:
    prefix: --cdhit_seq_identity
- id: allow_missing_st
  doc: Use files with missing ST [False]
  type: boolean
  inputBinding:
    prefix: --allow_missing_st
- id: debug
  doc: 'Turn on debugging and save intermediate files (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: species
  doc: Species in quotes
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- galru_create_species
