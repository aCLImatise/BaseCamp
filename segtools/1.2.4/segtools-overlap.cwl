#!/usr/bin/env cwl-runner

baseCommand:
- segtools-overlap
class: CommandLineTool
cwlVersion: v1.0
id: segtools-overlap
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
- doc: Compute values only for one chromosome.
  id: quick
  inputBinding:
    prefix: --quick
  type: boolean
- doc: Load data from output tab files and regenerate plots instead of recomputing
    data.
  id: replot
  inputBinding:
    prefix: --replot
  type: boolean
- doc: Do not generate any plots.
  id: no_plot
  inputBinding:
    prefix: --noplot
  type: boolean
- doc: Cluster rows and columns in heat map plot
  id: cluster
  inputBinding:
    prefix: --cluster
  type: boolean
- doc: For each group in the SEGMENTATION, a separate output file will be created
    that contains a list of all the segments that the group was found to overlap with.
    Output files are named overlap.segments.X.txt, where X is the name of the SEGMENTATION
    group.
  id: print_segments
  inputBinding:
    prefix: --print-segments
  type: boolean
- doc: Saturate color range instead of having it go from 0 to 1
  id: max_contrast
  inputBinding:
    prefix: --max-contrast
  type: boolean
- doc: "One of: ['segments', 'bases'], which determines the definition of overlap.\
    \ @segments: The value associated with two features overlapping will be 1 if they\
    \ overlap, and 0 otherwise. @bases: The value associated with two features overlapping\
    \ will be number of base pairs which they overlap. [default: bases]"
  id: by
  inputBinding:
    prefix: --by
  type: string
- doc: 'The minimum number of base pairs that two features must overlap for them to
    be classified as overlapping. This integer can be either positive (features overlap
    only if they share at least this many bases) or negative (features overlap if
    there are no more than this many bases between them). Both a negative min- overlap
    and --by=bases cannot be specified together. [default: 1]'
  id: min_overlap
  inputBinding:
    prefix: --min-overlap
  type: string
- doc: If specified, labels will be shown using mnemonics found in FILE
  id: mnemonic_file
  inputBinding:
    prefix: --mnemonic-file
  type: File
- doc: If specified, ANNOTATION groups will be shown using mnemonics found in FILE.
  id: feature_mnemonic_file
  inputBinding:
    prefix: --feature-mnemonic-file
  type: File
- doc: 'File output directory (will be created if it does not exist) [default: overlap]'
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
