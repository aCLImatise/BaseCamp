class: CommandLineTool
id: segtools_feature_distance.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: segmentation
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: annotation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: clobber
  doc: Overwrite any existing output files.
  type: boolean
  inputBinding:
    prefix: --clobber
- id: quiet
  doc: Do not print diagnostic messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: stranded
  doc: Strand correct features in the ANNOTATION file. If the feature contains strand
    information, the sign of the distance value is used to portray the relationship
    between the segment and the nearest stranded feature. A negative distance value
    indicates that the segment is nearest the 5' end of the feature, whereas a positive
    value indicates the segment is nearest the 3' end of the feature.
  type: boolean
  inputBinding:
    prefix: --stranded
- id: print_nearest
  doc: The name of the nearest feature will be printed after each distance (with a
    space separating the two) for features from the ANNOTATION file. If multiple features
    are equally near (or overlap), it is undefined which will be printed
  type: boolean
  inputBinding:
    prefix: --print-nearest
- id: all_overlapping
  doc: If multiple features in the ANNOTATION file overlap a segment, a separate line
    is printed for each overlapping segment-feature pair. This is most interesting
    with --print-nearest. Otherwise, the first overlapping segment will be used for
    printing.
  type: boolean
  inputBinding:
    prefix: --all-overlapping
- id: no_plot
  doc: Do not generate any plots.
  type: boolean
  inputBinding:
    prefix: --noplot
- id: replot
  doc: Load data from output tab files and regenerate plots instead of recomputing
    data.
  type: boolean
  inputBinding:
    prefix: --replot
- id: n_bins
  doc: Number of bins to use in histogram for distances greater than zero and less
    than or equal to N*W. Distances of 0 and greater than N*W are placed in additional
    bins. If --stranded, N more bins are included in the negative direction and a
    bin for distances less than -N*W.
  type: string
  inputBinding:
    prefix: --n-bins
- id: bin_width
  doc: Number of bases in each bin. If --stranded, bins cover distances of (-Inf,-N*W),
    ..., [-W,0), [0], (0,W], ..., (N*W,Inf). Otherwise, the bins cover distances of
    [0], (0,W], (W,2W], ..., (N*W,Inf).
  type: string
  inputBinding:
    prefix: --bin-width
- id: mnemonic_file
  doc: If specified, labels will be shown using mnemonics found in FILE
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: outdir
  doc: 'File output directory (will be created if it does not exist) [default: feature_distance]'
  type: string
  inputBinding:
    prefix: --outdir
- id: r
  doc: =VAL        Pass VAL for PARAM when calling R functions. May be specified multiple
    times.
  type: string
  inputBinding:
    prefix: -R
outputs: []
cwlVersion: v1.1
baseCommand:
- segtools-feature-distance
