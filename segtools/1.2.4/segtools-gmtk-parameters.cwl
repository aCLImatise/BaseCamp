#!/usr/bin/env cwl-runner

baseCommand:
- segtools-gmtk-parameters
class: CommandLineTool
cwlVersion: v1.0
id: segtools-gmtk-parameters
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: params_file
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
- doc: Do not generate any plots.
  id: no_plot
  inputBinding:
    prefix: --noplot
  type: boolean
- doc: Do not generate transition graph.
  id: no_graph
  inputBinding:
    prefix: --nograph
  type: boolean
- doc: If mnemonics are not specified, they will be created and used for plotting
  id: create_mnemonics
  inputBinding:
    prefix: --create-mnemonics
  type: boolean
- doc: 'If a file is specified with --trackname-translation, the mappings in this
    file will be interpreted as regular expressions instead of exact mappings. Thus,
    all underscores could be converted to periods with the single line: `_<TAB>.`.
    Mappings will be applied sequentially, so a second line of: `\.<TAB>#` would (together
    with the first line) convert all periods and underscores to pounds.'
  id: allow_regex
  inputBinding:
    prefix: --allow-regex
  type: boolean
- doc: If specified, labels will be shown using mnemonics found in FILE
  id: mnemonic_file
  inputBinding:
    prefix: --mnemonic-file
  type: File
- doc: 'File output directory (will be created if it does not exist) [default: gmtk_parameters]'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: Should be a file with rows <old-trackname><TAB><new- trackname>. Tracknames
    will be translated using this mapping before plotting the stats plot. By default,
    <old-trackname> must exactly match the name of a track, but --allow-regex provides
    more flexibility.
  id: track_name_translation
  inputBinding:
    prefix: --trackname-translation
  type: File
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
- doc: Make each node of the graph a reference to a .ps image an "image" subdirectory.
    Currently, these .ps files need to be made separately.
  id: gene_graph
  inputBinding:
    prefix: --gene-graph
  type: boolean
- doc: =VAL        Pass VAL for PARAM when calling R functions. May be specified multiple
    times.
  id: r
  inputBinding:
    prefix: -R
  type: string
