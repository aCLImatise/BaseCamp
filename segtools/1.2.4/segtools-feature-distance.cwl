#!/usr/bin/env cwl-runner

baseCommand:
- segtools-feature-distance
class: CommandLineTool
cwlVersion: v1.0
id: segtools-feature-distance
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: segmentation
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: annotation
  inputBinding:
    position: 2
  type: string
- doc: Overwrite any existing output files.
  id: clobber
  inputBinding:
    prefix: --clobber
  type: boolean
- doc: Do not print diagnostic messages.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Strand correct features in the ANNOTATION file. If the feature contains strand
    information, the sign of the distance value is used to portray the relationship
    between the segment and the nearest stranded feature. A negative distance value
    indicates that the segment is nearest the 5' end of the feature, whereas a positive
    value indicates the segment is nearest the 3' end of the feature.
  id: stranded
  inputBinding:
    prefix: --stranded
  type: boolean
- doc: The name of the nearest feature will be printed after each distance (with a
    space separating the two) for features from the ANNOTATION file. If multiple features
    are equally near (or overlap), it is undefined which will be printed
  id: print_nearest
  inputBinding:
    prefix: --print-nearest
  type: boolean
- doc: If multiple features in the ANNOTATION file overlap a segment, a separate line
    is printed for each overlapping segment-feature pair. This is most interesting
    with --print-nearest. Otherwise, the first overlapping segment will be used for
    printing.
  id: all_overlapping
  inputBinding:
    prefix: --all-overlapping
  type: boolean
- doc: Do not generate any plots.
  id: no_plot
  inputBinding:
    prefix: --noplot
  type: boolean
- doc: Load data from output tab files and regenerate plots instead of recomputing
    data.
  id: replot
  inputBinding:
    prefix: --replot
  type: boolean
- doc: Number of bins to use in histogram for distances greater than zero and less
    than or equal to N*W. Distances of 0 and greater than N*W are placed in additional
    bins. If --stranded, N more bins are included in the negative direction and a
    bin for distances less than -N*W.
  id: n_bins
  inputBinding:
    prefix: --n-bins
  type: string
- doc: Number of bases in each bin. If --stranded, bins cover distances of (-Inf,-N*W),
    ..., [-W,0), [0], (0,W], ..., (N*W,Inf). Otherwise, the bins cover distances of
    [0], (0,W], (W,2W], ..., (N*W,Inf).
  id: bin_width
  inputBinding:
    prefix: --bin-width
  type: string
- doc: If specified, labels will be shown using mnemonics found in FILE
  id: mnemonic_file
  inputBinding:
    prefix: --mnemonic-file
  type: File
- doc: 'File output directory (will be created if it does not exist) [default: feature_distance]'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: =VAL        Pass VAL for PARAM when calling R functions. May be specified multiple
    times.
  id: r
  inputBinding:
    prefix: -R
  type: string
