class: CommandLineTool
id: mergePeaks.cwl
inputs:
- id: in_strand
  doc: '(Only merge/consider peaks on the same strand, default: either strand)'
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_given_maximum_distance
  doc: "<#|given> (Maximum distance between peak centers to merge, default: given)\n\
    Using \"-d given\" looks for literal overlaps in peak regions - DEFAULT since\
    \ v4.4\nUse \"-d given\" when features have vastly different sizes (i.e. peaks\
    \ vs. introns)"
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
- id: in_prefix
  doc: "(Generates separate files for overlapping and unique peaks)\nBy default all\
    \ peaks are sent to stdout"
  type: File?
  inputBinding:
    prefix: -prefix
- id: in_matrix
  doc: "(Generates files with pairwise comparison statistics)\nfilename.logPvalue.matrix.txt\
    \ - ln p-values for overlap, +values for divergence\nfilename.logRatio.matrix.txt\
    \ - ln ratio of observed/expected overlaps\nfilename.count.matrix.txt - peak overlap\
    \ counts"
  type: File?
  inputBinding:
    prefix: -matrix
- id: in_venn
  doc: '(output venn diagram numbers to file, default: to stderr)'
  type: File?
  inputBinding:
    prefix: -venn
- id: in_code
  doc: (report peak membership as binary instead of by file names)
  type: boolean?
  inputBinding:
    prefix: -code
- id: in_co_bound
  doc: "<#> (Maximum number of co-bound peaks to consider)\nWill output sets of peaks\
    \ that are co-bound by various numbers of factors\nto files coBoundBy0.txt, coBoundBy1.txt,\
    \ coboundBy2.txt, ...\nOr <prefix>.coBoundBy0.txt, <prefix>.coBoundBy1.txt, ..."
  type: boolean?
  inputBinding:
    prefix: -cobound
- id: in_filter
  doc: :XXX-YYY (only analyze peaks within range)
  type: string?
  inputBinding:
    prefix: -filter
- id: in_coverage
  doc: (returns the total bp covered by each peak file - use "-d given"
  type: File?
  inputBinding:
    prefix: -coverage
- id: in_primary_peak_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_venn
  doc: '(output venn diagram numbers to file, default: to stderr)'
  type: File?
  outputBinding:
    glob: $(inputs.in_venn)
- id: out_coverage
  doc: (returns the total bp covered by each peak file - use "-d given"
  type: File?
  outputBinding:
    glob: $(inputs.in_coverage)
hints: []
cwlVersion: v1.1
baseCommand:
- mergePeaks
