class: CommandLineTool
id: segtools_gmtk_parameters.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: params_file
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
- id: no_plot
  doc: Do not generate any plots.
  type: boolean
  inputBinding:
    prefix: --noplot
- id: no_graph
  doc: Do not generate transition graph.
  type: boolean
  inputBinding:
    prefix: --nograph
- id: create_mnemonics
  doc: If mnemonics are not specified, they will be created and used for plotting
  type: boolean
  inputBinding:
    prefix: --create-mnemonics
- id: allow_regex
  doc: 'If a file is specified with --trackname-translation, the mappings in this
    file will be interpreted as regular expressions instead of exact mappings. Thus,
    all underscores could be converted to periods with the single line: `_<TAB>.`.
    Mappings will be applied sequentially, so a second line of: `\.<TAB>#` would (together
    with the first line) convert all periods and underscores to pounds.'
  type: boolean
  inputBinding:
    prefix: --allow-regex
- id: mnemonic_file
  doc: If specified, labels will be shown using mnemonics found in FILE
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: outdir
  doc: 'File output directory (will be created if it does not exist) [default: gmtk_parameters]'
  type: string
  inputBinding:
    prefix: --outdir
- id: track_name_translation
  doc: Should be a file with rows <old-trackname><TAB><new- trackname>. Tracknames
    will be translated using this mapping before plotting the stats plot. By default,
    <old-trackname> must exactly match the name of a track, but --allow-regex provides
    more flexibility.
  type: File
  inputBinding:
    prefix: --trackname-translation
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
- id: gene_graph
  doc: Make each node of the graph a reference to a .ps image an "image" subdirectory.
    Currently, these .ps files need to be made separately.
  type: boolean
  inputBinding:
    prefix: --gene-graph
- id: r
  doc: =VAL        Pass VAL for PARAM when calling R functions. May be specified multiple
    times.
  type: string
  inputBinding:
    prefix: -R
outputs: []
cwlVersion: v1.1
baseCommand:
- segtools-gmtk-parameters
