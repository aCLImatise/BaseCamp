class: CommandLineTool
id: segtools_gmtk_parameters.cwl
inputs:
- id: in_clobber
  doc: Overwrite any existing output files.
  type: boolean
  inputBinding:
    prefix: --clobber
- id: in_quiet
  doc: Do not print diagnostic messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_no_plot
  doc: Do not generate any plots.
  type: boolean
  inputBinding:
    prefix: --noplot
- id: in_no_graph
  doc: Do not generate transition graph.
  type: boolean
  inputBinding:
    prefix: --nograph
- id: in_create_mnemonics
  doc: "If mnemonics are not specified, they will be created\nand used for plotting"
  type: boolean
  inputBinding:
    prefix: --create-mnemonics
- id: in_allow_regex
  doc: "If a file is specified with --trackname-translation,\nthe mappings in this\
    \ file will be interpreted as\nregular expressions instead of exact mappings.\
    \ Thus,\nall underscores could be converted to periods with the\nsingle line:\
    \ `_<TAB>.`. Mappings will be applied\nsequentially, so a second line of: `\\\
    .<TAB>#` would\n(together with the first line) convert all periods and\nunderscores\
    \ to pounds."
  type: boolean
  inputBinding:
    prefix: --allow-regex
- id: in_mnemonic_file
  doc: "If specified, labels will be shown using mnemonics\nfound in FILE"
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: in_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: gmtk_parameters]"
  type: File
  inputBinding:
    prefix: --outdir
- id: in_track_name_translation
  doc: "Should be a file with rows <old-trackname><TAB><new-\ntrackname>. Tracknames\
    \ will be translated using this\nmapping before plotting the stats plot. By default,\n\
    <old-trackname> must exactly match the name of a\ntrack, but --allow-regex provides\
    \ more flexibility."
  type: File
  inputBinding:
    prefix: --trackname-translation
- id: in_prob_threshold
  doc: "ignore all transitions with probabilities below this\nabsolute threshold [default:\
    \ 0.15]"
  type: double
  inputBinding:
    prefix: --prob-threshold
- id: in_quantile_threshold
  doc: "ignore transitions with probabilities below this\nprobability quantile [default:\
    \ 0.0]"
  type: double
  inputBinding:
    prefix: --quantile-threshold
- id: in_gene_graph
  doc: "Make each node of the graph a reference to a .ps image\nan \"image\" subdirectory.\
    \ Currently, these .ps files\nneed to be made separately."
  type: boolean
  inputBinding:
    prefix: --gene-graph
- id: in_val_pass_val
  doc: "=VAL        Pass VAL for PARAM when calling R functions. May be\nspecified\
    \ multiple times.\n"
  type: string
  inputBinding:
    prefix: -R
- id: in_params_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: gmtk_parameters]"
  type: File
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- segtools-gmtk-parameters
