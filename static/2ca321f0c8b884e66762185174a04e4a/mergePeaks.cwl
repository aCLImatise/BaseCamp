class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mergePeaks.cwl
inputs:
- id: strand
  doc: '(Only merge/consider peaks on the same strand, default: either strand)'
  type: boolean
  inputBinding:
    prefix: -strand
- id: given_maximum_distance
  doc: '<#|given> (Maximum distance between peak centers to merge, default: given)
    Using "-d given" looks for literal overlaps in peak regions - DEFAULT since v4.4
    Use "-d given" when features have vastly different sizes (i.e. peaks vs. introns)'
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
- id: venn
  doc: '(output venn diagram numbers to file, default: to stderr)'
  type: File
  inputBinding:
    prefix: -venn
- id: code
  doc: (report peak membership as binary instead of by file names)
  type: boolean
  inputBinding:
    prefix: -code
- id: matrix
  doc: (generates similar files to above with pairwise overlap statistics)
  type: File
  inputBinding:
    prefix: -matrix
- id: filter
  doc: :XXX-YYY (only analyze peaks within range)
  type: string
  inputBinding:
    prefix: -filter
- id: coverage
  doc: (returns the total bp covered by each peak file - use "-d given"
  type: string
  inputBinding:
    prefix: -coverage
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
- id: peak_slash_annotation
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
- mergePeaks
