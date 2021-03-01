class: CommandLineTool
id: megalodon_extras_modified_bases_estimate_threshold.cwl
inputs:
- id: in_fraction_modified
  doc: "Specify fraction of modified calls. Default: Use\n--mod-percentile most extreme\
    \ scores to estimate the\nfraction."
  type: string?
  inputBinding:
    prefix: --fraction-modified
- id: in_mod_percentile
  doc: "Percentile of extreme scores to determine fraction of\nmodified bases. Default:\
    \ 8"
  type: long?
  inputBinding:
    prefix: --mod-percentile
- id: in_num_positions
  doc: "Number of positions from which to select statistics.\nDefault: All positions\n"
  type: long?
  inputBinding:
    prefix: --num-positions
- id: in_output_dot
  doc: mod_base              Single letter code for the modified base.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- modified_bases
- estimate_threshold
