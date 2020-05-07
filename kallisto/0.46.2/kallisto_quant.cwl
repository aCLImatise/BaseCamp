class: CommandLineTool
id: kallisto_quant.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bias
  doc: Perform sequence based bias correction
  type: boolean
  inputBinding:
    prefix: --bias
- id: seed
  doc: 'Seed for the bootstrap sampling (default: 42)'
  type: long
  inputBinding:
    prefix: --seed
- id: plain_text
  doc: Output plaintext instead of HDF5
  type: boolean
  inputBinding:
    prefix: --plaintext
- id: fusion
  doc: Search for fusions for Pizzly
  type: boolean
  inputBinding:
    prefix: --fusion
- id: single
  doc: Quantify single-end reads
  type: boolean
  inputBinding:
    prefix: --single
- id: single_overhang
  doc: Include reads where unobserved rest of fragment is predicted to lie outside
    a transcript
  type: boolean
  inputBinding:
    prefix: --single-overhang
- id: fr_stranded
  doc: Strand specific reads, first read forward
  type: boolean
  inputBinding:
    prefix: --fr-stranded
- id: rf_stranded
  doc: Strand specific reads, first read reverse
  type: boolean
  inputBinding:
    prefix: --rf-stranded
- id: pseudo_bam
  doc: Save pseudoalignments to transcriptome to BAM file
  type: boolean
  inputBinding:
    prefix: --pseudobam
- id: genome_bam
  doc: Project pseudoalignments to genome sorted BAM file
  type: boolean
  inputBinding:
    prefix: --genomebam
- id: verbose
  doc: Print out progress information every 1M proccessed reads
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- kallisto
- quant
