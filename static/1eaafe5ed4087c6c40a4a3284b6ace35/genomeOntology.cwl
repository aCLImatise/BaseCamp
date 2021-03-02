class: CommandLineTool
id: genomeOntology.cwl
inputs:
- id: in_given_maximum_distance
  doc: "<#|given> (Maximum distance between peak centers to consider, default: 100)\n\
    Using \"-d given\" looks for literal overlaps in peak regions, and calculates\n\
    significance based on the total overlap in bp between peaks/annotations\nUse \"\
    -d given\" when features have vastly different sizes (i.e. introns vs. peaks)"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_file
  doc: (file listing peak files to compare - for lots of peak files)
  type: File?
  inputBinding:
    prefix: -file
- id: in_g_size
  doc: '<#> (Genome size for significance calculations, default: 2e9)'
  type: boolean?
  inputBinding:
    prefix: -gsize
- id: in_primary_peak_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genomeOntology
