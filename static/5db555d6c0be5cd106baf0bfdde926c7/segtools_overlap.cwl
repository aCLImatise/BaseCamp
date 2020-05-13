class: CommandLineTool
id: segtools_overlap.cwl
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
- id: quick
  doc: Compute values only for one chromosome.
  type: boolean
  inputBinding:
    prefix: --quick
- id: replot
  doc: Load data from output tab files and regenerate plots instead of recomputing
    data.
  type: boolean
  inputBinding:
    prefix: --replot
- id: no_plot
  doc: Do not generate any plots.
  type: boolean
  inputBinding:
    prefix: --noplot
- id: cluster
  doc: Cluster rows and columns in heat map plot
  type: boolean
  inputBinding:
    prefix: --cluster
- id: print_segments
  doc: For each group in the SEGMENTATION, a separate output file will be created
    that contains a list of all the segments that the group was found to overlap with.
    Output files are named overlap.segments.X.txt, where X is the name of the SEGMENTATION
    group.
  type: boolean
  inputBinding:
    prefix: --print-segments
- id: max_contrast
  doc: Saturate color range instead of having it go from 0 to 1
  type: boolean
  inputBinding:
    prefix: --max-contrast
- id: by
  doc: "One of: ['segments', 'bases'], which determines the definition of overlap.\
    \ @segments: The value associated with two features overlapping will be 1 if they\
    \ overlap, and 0 otherwise. @bases: The value associated with two features overlapping\
    \ will be number of base pairs which they overlap. [default: bases]"
  type: string
  inputBinding:
    prefix: --by
- id: min_overlap
  doc: 'The minimum number of base pairs that two features must overlap for them to
    be classified as overlapping. This integer can be either positive (features overlap
    only if they share at least this many bases) or negative (features overlap if
    there are no more than this many bases between them). Both a negative min- overlap
    and --by=bases cannot be specified together. [default: 1]'
  type: string
  inputBinding:
    prefix: --min-overlap
- id: mnemonic_file
  doc: If specified, labels will be shown using mnemonics found in FILE
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: feature_mnemonic_file
  doc: If specified, ANNOTATION groups will be shown using mnemonics found in FILE.
  type: File
  inputBinding:
    prefix: --feature-mnemonic-file
- id: outdir
  doc: 'File output directory (will be created if it does not exist) [default: overlap]'
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
- segtools-overlap
