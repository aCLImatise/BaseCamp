class: CommandLineTool
id: ../../../bin_evaluation.cwl
inputs:
- id: specify_directory_containing_putative_genomes
  doc: Specify the directory containing Putative genomes
  type: boolean
  inputBinding:
    prefix: -b
- id: specify_directory_containing_reference_genomes
  doc: Specify directory containing reference genomes
  type: boolean
  inputBinding:
    prefix: -r
- id: specify_suffix_bins
  doc: specify suffix of bins e.g .fa, .fna, .fasta, etc.
  type: boolean
  inputBinding:
    prefix: -l
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- bin_evaluation
