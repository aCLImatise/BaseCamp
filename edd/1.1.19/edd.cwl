class: CommandLineTool
id: ../../../edd.cwl
inputs:
- id: gap_penalty
  doc: Leave unspecificed for auto-estimation. Adjusts how sensitive EDD is to heterogeneity
    within domains. Depends on Signal/Noise ratio of source files and on the interests
    of the researcher. A "low" value favors large enriched domains with more heterogeneity.
    A "high" value favors smaller enriched domains devoid of heterogeneity.
  type: string
  inputBinding:
    prefix: --gap-penalty
- id: config_file
  doc: Path to user specified EDD configuration file. See EDD manual section about
    configuration for more information.
  type: string
  inputBinding:
    prefix: --config-file
- id: write_log_ratios
  doc: Write log ratios to file.
  type: boolean
  inputBinding:
    prefix: --write-log-ratios
- id: write_bin_scores
  doc: Write bin scores to file.
  type: boolean
  inputBinding:
    prefix: --write-bin-scores
- id: bin_size
  doc: ''
  type: string
  inputBinding:
    prefix: --bin-size
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: fdr
  doc: ''
  type: string
  inputBinding:
    prefix: --fdr
outputs: []
cwlVersion: v1.1
baseCommand:
- edd
