class: CommandLineTool
id: segtools_transition.cwl
inputs:
- id: in_clobber
  doc: Overwrite any existing output files.
  type: boolean?
  inputBinding:
    prefix: --clobber
- id: in_quiet
  doc: Do not print diagnostic messages.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_replot
  doc: "Load data from output tab files and regenerate plots\ninstead of recomputing\
    \ data."
  type: boolean?
  inputBinding:
    prefix: --replot
- id: in_no_plot
  doc: Do not generate any plots.
  type: boolean?
  inputBinding:
    prefix: --noplot
- id: in_no_graph
  doc: Do not generate transition graph
  type: boolean?
  inputBinding:
    prefix: --nograph
- id: in_mnemonic_file
  doc: "If specified, labels will be shown using mnemonics\nfound in FILE"
  type: File?
  inputBinding:
    prefix: --mnemonic-file
- id: in_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: transition]"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_dendrogram
  doc: "include dendrogram along edge of levelplot [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --dendrogram
- id: in_prob_threshold
  doc: "ignore all transitions with probabilities below this\nabsolute threshold [default:\
    \ 0.15]"
  type: double?
  inputBinding:
    prefix: --prob-threshold
- id: in_quantile_threshold
  doc: "ignore transitions with probabilities below this\nprobability quantile [default:\
    \ 0.0]"
  type: double?
  inputBinding:
    prefix: --quantile-threshold
- id: in_gmt_k
  doc: "The SEGMENTATION argument will instead be treated as a\nGMTK parameter file.\
    \ If a mnemonic file is not\nspecified, one will be created and used."
  type: boolean?
  inputBinding:
    prefix: --gmtk
- id: in_val_pass_val
  doc: "=VAL        Pass VAL for PARAM when calling R functions. May be\nspecified\
    \ multiple times.\n"
  type: string?
  inputBinding:
    prefix: -R
- id: in_segmentation
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: transition]"
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- segtools-transition
