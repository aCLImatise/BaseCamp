class: CommandLineTool
id: rgt_hint_differential.cwl
inputs:
- id: organism
  doc: 'Organism considered on the analysis. Must have been setup in the RGTDATA folder.
    Common choices are hg19, hg38. mm9, and mm10. DEFAULT: hg19'
  type: string
  inputBinding:
    prefix: --organism
- id: m_pbs_files
  doc: ',FILE2... Predicted motif binding sites for each condition.Files should be
    separated with comma.'
  type: File
  inputBinding:
    prefix: --mpbs-files
- id: reads_files
  doc: ',FILE2... Reads for each condition. Files should be separated with comma.'
  type: File
  inputBinding:
    prefix: --reads-files
- id: conditions
  doc: 'Name for each condition. DEFAULT: condition1,condition2, ...'
  type: string
  inputBinding:
    prefix: --conditions
- id: colors
  doc: 'Set color in line plot. DEFAULT: None, ...'
  type: string
  inputBinding:
    prefix: --colors
- id: window_size
  doc: 'The window size for differential analysis. DEFAULT: 200'
  type: long
  inputBinding:
    prefix: --window-size
- id: fdr
  doc: 'The false discovery rate. DEFAULT: 0.05'
  type: double
  inputBinding:
    prefix: --fdr
- id: bc
  doc: 'If set, all analysis will be based on bias corrected signal. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --bc
- id: nc
  doc: 'The number of cores. DEFAULT: 1'
  type: long
  inputBinding:
    prefix: --nc
- id: output_location
  doc: 'Path where the output bias table files will be written. DEFAULT: current directory'
  type: File
  inputBinding:
    prefix: --output-location
- id: output_prefix
  doc: 'The prefix for results files. DEFAULT: differential'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: standardize
  doc: If set, the signal will be rescaled to (0, 1) for plotting.
  type: boolean
  inputBinding:
    prefix: --standardize
- id: output_profiles
  doc: 'If set, the footprint profiles will be writen into a text, in which each row
    is a specific instance of the given motif. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --output-profiles
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- differential
