class: CommandLineTool
id: segtools_length_distribution.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: annotation
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
- id: no_segments
  doc: Do not show total segments covered by labels in size plot
  type: boolean
  inputBinding:
    prefix: --no-segments
- id: no_bases
  doc: Do not show total bases covered by labels in size plot
  type: boolean
  inputBinding:
    prefix: --no-bases
- id: mnemonic_file
  doc: If specified, labels will be shown using mnemonics found in FILE
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: outdir
  doc: 'File output directory (will be created if it does not exist) [default: length_distribution]'
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
- segtools-length-distribution
