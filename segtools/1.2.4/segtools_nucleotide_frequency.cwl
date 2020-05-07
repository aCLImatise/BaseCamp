class: CommandLineTool
id: segtools_nucleotide_frequency.cwl
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
- id: genome_data_file
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
- id: mnemonic_file
  doc: If specified, labels will be shown using mnemonics found in FILE
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: outdir
  doc: 'File output directory (will be created if it does not exist) [default: nucleotide_frequency]'
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
- segtools-nucleotide-frequency
