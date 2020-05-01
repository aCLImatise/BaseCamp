#!/usr/bin/env cwl-runner

baseCommand:
- ConsensusMapNormalizer
class: CommandLineTool
cwlVersion: v1.0
id: consensusmapnormalizer
inputs:
- doc: "*               Input file (valid formats: 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*              Output file (valid formats: 'consensusXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "The normalization algorithm that is applied. 'robust_regression' scales each\
    \ map by a fator computed from the ratios of non-differential background features\
    \ (as determined by the  ratio_threshold parameter), 'quantile' performs quantile\
    \ normalization, 'median' scales all maps to the same median intensity, 'median_shift'\
    \ shifts the median instead of scaling (WARNING: if you have regular, log-normal\
    \ MS data, 'median_shift' is probably the wrong choice. Use only if you know what\
    \ you're doing!) (default: 'robust_regression' valid: 'robust_ regression', 'median',\
    \ 'median_shift', 'quantile')"
  id: algorithm_type
  inputBinding:
    prefix: -algorithm_type
  type: string
- doc: "Only for 'robust_regression': the parameter is used to distinguish between\
    \ non-outliers (ratio_threshold < intensity ratio < 1/ratio_threshold) and outliers.\
    \ (default: '0.67' min:  '0.001' max: '1')"
  id: ratio_threshold
  inputBinding:
    prefix: -ratio_threshold
  type: string
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
