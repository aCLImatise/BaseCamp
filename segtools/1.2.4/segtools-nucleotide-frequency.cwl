#!/usr/bin/env cwl-runner

baseCommand:
- segtools-nucleotide-frequency
class: CommandLineTool
cwlVersion: v1.0
id: segtools-nucleotide-frequency
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: annotation
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: genome_data_file
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
- doc: If specified, labels will be shown using mnemonics found in FILE
  id: mnemonic_file
  inputBinding:
    prefix: --mnemonic-file
  type: File
- doc: 'File output directory (will be created if it does not exist) [default: nucleotide_frequency]'
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
