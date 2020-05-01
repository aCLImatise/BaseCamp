#!/usr/bin/env cwl-runner

baseCommand:
- segtools-transition
class: CommandLineTool
cwlVersion: v1.0
id: segtools-transition
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
- doc: Do not generate transition graph
  id: no_graph
  inputBinding:
    prefix: --nograph
  type: boolean
- doc: If specified, labels will be shown using mnemonics found in FILE
  id: mnemonic_file
  inputBinding:
    prefix: --mnemonic-file
  type: File
- doc: 'File output directory (will be created if it does not exist) [default: transition]'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'include dendrogram along edge of levelplot [default: False]'
  id: dendrogram
  inputBinding:
    prefix: --dendrogram
  type: boolean
- doc: 'ignore all transitions with probabilities below this absolute threshold [default:
    0.15]'
  id: prob_threshold
  inputBinding:
    prefix: --prob-threshold
  type: string
- doc: 'ignore transitions with probabilities below this probability quantile [default:
    0.0]'
  id: quantile_threshold
  inputBinding:
    prefix: --quantile-threshold
  type: string
- doc: The SEGMENTATION argument will instead be treated as a GMTK parameter file.
    If a mnemonic file is not specified, one will be created and used.
  id: gmt_k
  inputBinding:
    prefix: --gmtk
  type: boolean
- doc: =VAL        Pass VAL for PARAM when calling R functions. May be specified multiple
    times.
  id: r
  inputBinding:
    prefix: -R
  type: string
