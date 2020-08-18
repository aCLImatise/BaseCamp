class: CommandLineTool
id: ../../../genomeOntology.cwl
inputs:
- id: given_maximum_distance
  doc: '<#|given> (Maximum distance between peak centers to consider, default: 100)
    Using "-d given" looks for literal overlaps in peak regions, and calculates significance
    based on the total overlap in bp between peaks/annotations Use "-d given" when
    features have vastly different sizes (i.e. introns vs. peaks)'
  type: boolean
  inputBinding:
    prefix: -d
- id: file
  doc: (file listing peak files to compare - for lots of peak files)
  type: File
  inputBinding:
    prefix: -file
- id: g_size
  doc: '<#> (Genome size for significance calculations, default: 2e9)'
  type: boolean
  inputBinding:
    prefix: -gsize
- id: primary_peak_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: additional
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: peak_slash_ann
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: files_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- genomeOntology
