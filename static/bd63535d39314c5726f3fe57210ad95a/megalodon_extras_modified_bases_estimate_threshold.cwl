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
- id: in_num_statistics
  doc: "Number of per-read statistics to use in estimation.\nDefault: All statistics\n"
  type: long?
  inputBinding:
    prefix: --num-statistics
- id: in_output_dot
  doc: mod_base              Single letter code for the modified base.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.3.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- modified_bases
- estimate_threshold
