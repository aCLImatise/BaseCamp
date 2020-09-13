class: CommandLineTool
id: ../../../cmstat.cwl
inputs:
- id: in_e
  doc: ': print bit scores that correspond to E-value threshold of <x>'
  type: string
  inputBinding:
    prefix: -E
- id: in_p
  doc: ': print bit scores that correspond to E-value threshold of <x>'
  type: string
  inputBinding:
    prefix: -P
- id: in_bit_score_threshold
  doc: ': print E-values that correspond to bit score threshold of <x>'
  type: string
  inputBinding:
    prefix: -T
- id: in_set_database_size
  doc: ': set database size in *Mb* to <x> for E-value calculations  [10]'
  type: long
  inputBinding:
    prefix: -Z
- id: in_cut_ga
  doc: ': print E-values that correspond to GA bit score thresholds'
  type: boolean
  inputBinding:
    prefix: --cut_ga
- id: in_cut_nc
  doc: ': print E-values that correspond to NC bit score thresholds'
  type: boolean
  inputBinding:
    prefix: --cut_nc
- id: in_cut_tc
  doc: ': print E-values that correspond to TC bit score thresholds'
  type: boolean
  inputBinding:
    prefix: --cut_tc
- id: in_key
  doc: ': only print statistics for CM with name or accession <s>'
  type: string
  inputBinding:
    prefix: --key
- id: in_hmm_only
  doc: ': print filter HMM bit scores/E-values, not CM ones'
  type: boolean
  inputBinding:
    prefix: --hmmonly
- id: in_no_hmm_only
  doc: ': print CM bit scores/E-values, even for models with 0 basepairs'
  type: boolean
  inputBinding:
    prefix: --nohmmonly
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cmstat
