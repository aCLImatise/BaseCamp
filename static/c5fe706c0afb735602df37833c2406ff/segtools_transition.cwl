class: CommandLineTool
id: segtools_transition.cwl
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
- id: no_graph
  doc: Do not generate transition graph
  type: boolean
  inputBinding:
    prefix: --nograph
- id: mnemonic_file
  doc: If specified, labels will be shown using mnemonics found in FILE
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: outdir
  doc: 'File output directory (will be created if it does not exist) [default: transition]'
  type: string
  inputBinding:
    prefix: --outdir
- id: dendrogram
  doc: 'include dendrogram along edge of levelplot [default: False]'
  type: boolean
  inputBinding:
    prefix: --dendrogram
- id: prob_threshold
  doc: 'ignore all transitions with probabilities below this absolute threshold [default:
    0.15]'
  type: string
  inputBinding:
    prefix: --prob-threshold
- id: quantile_threshold
  doc: 'ignore transitions with probabilities below this probability quantile [default:
    0.0]'
  type: string
  inputBinding:
    prefix: --quantile-threshold
- id: gmt_k
  doc: The SEGMENTATION argument will instead be treated as a GMTK parameter file.
    If a mnemonic file is not specified, one will be created and used.
  type: boolean
  inputBinding:
    prefix: --gmtk
- id: r
  doc: =VAL        Pass VAL for PARAM when calling R functions. May be specified multiple
    times.
  type: string
  inputBinding:
    prefix: -R
outputs: []
cwlVersion: v1.1
baseCommand:
- segtools-transition
