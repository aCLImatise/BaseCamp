class: CommandLineTool
id: ConsensusMapNormalizer.cwl
inputs:
- id: in
  doc: "*               Input file (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*              Output file (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: algorithm_type
  doc: "The normalization algorithm that is applied. 'robust_regression' scales each\
    \ map by a fator computed from the ratios of non-differential background features\
    \ (as determined by the  ratio_threshold parameter), 'quantile' performs quantile\
    \ normalization, 'median' scales all maps to the same median intensity, 'median_shift'\
    \ shifts the median instead of scaling (WARNING: if you have regular, log-normal\
    \ MS data, 'median_shift' is probably the wrong choice. Use only if you know what\
    \ you're doing!) (default: 'robust_regression' valid: 'robust_ regression', 'median',\
    \ 'median_shift', 'quantile')"
  type: string
  inputBinding:
    prefix: -algorithm_type
- id: ratio_threshold
  doc: "Only for 'robust_regression': the parameter is used to distinguish between\
    \ non-outliers (ratio_threshold < intensity ratio < 1/ratio_threshold) and outliers.\
    \ (default: '0.67' min:  '0.001' max: '1.0')"
  type: string
  inputBinding:
    prefix: -ratio_threshold
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- ConsensusMapNormalizer
