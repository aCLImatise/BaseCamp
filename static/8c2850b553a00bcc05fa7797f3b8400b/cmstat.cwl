class: CommandLineTool
id: cmstat.cwl
inputs:
- id: e
  doc: ': print bit scores that correspond to E-value threshold of <x>'
  type: string
  inputBinding:
    prefix: -E
- id: p
  doc: ': print bit scores that correspond to E-value threshold of <x>'
  type: string
  inputBinding:
    prefix: -P
- id: t
  doc: ': print E-values that correspond to bit score threshold of <x>'
  type: string
  inputBinding:
    prefix: -T
- id: z
  doc: ': set database size in *Mb* to <x> for E-value calculations  [10]'
  type: string
  inputBinding:
    prefix: -Z
- id: cut_ga
  doc: ': print E-values that correspond to GA bit score thresholds'
  type: boolean
  inputBinding:
    prefix: --cut_ga
- id: cut_nc
  doc: ': print E-values that correspond to NC bit score thresholds'
  type: boolean
  inputBinding:
    prefix: --cut_nc
- id: cut_tc
  doc: ': print E-values that correspond to TC bit score thresholds'
  type: boolean
  inputBinding:
    prefix: --cut_tc
- id: key
  doc: ': only print statistics for CM with name or accession <s>'
  type: string
  inputBinding:
    prefix: --key
- id: hmm_only
  doc: ': print filter HMM bit scores/E-values, not CM ones'
  type: boolean
  inputBinding:
    prefix: --hmmonly
- id: no_hmm_only
  doc: ': print CM bit scores/E-values, even for models with 0 basepairs'
  type: boolean
  inputBinding:
    prefix: --nohmmonly
outputs: []
cwlVersion: v1.1
baseCommand:
- cmstat
