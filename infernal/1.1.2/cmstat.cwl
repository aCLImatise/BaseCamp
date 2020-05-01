#!/usr/bin/env cwl-runner

baseCommand:
- cmstat
class: CommandLineTool
cwlVersion: v1.0
id: cmstat
inputs:
- doc: ': print bit scores that correspond to E-value threshold of <x>'
  id: e
  inputBinding:
    prefix: -E
  type: string
- doc: ': print bit scores that correspond to E-value threshold of <x>'
  id: p
  inputBinding:
    prefix: -P
  type: string
- doc: ': print E-values that correspond to bit score threshold of <x>'
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: ': set database size in *Mb* to <x> for E-value calculations  [10]'
  id: z
  inputBinding:
    prefix: -Z
  type: string
- doc: ': print E-values that correspond to GA bit score thresholds'
  id: cut_ga
  inputBinding:
    prefix: --cut_ga
  type: boolean
- doc: ': print E-values that correspond to NC bit score thresholds'
  id: cut_nc
  inputBinding:
    prefix: --cut_nc
  type: boolean
- doc: ': print E-values that correspond to TC bit score thresholds'
  id: cut_tc
  inputBinding:
    prefix: --cut_tc
  type: boolean
- doc: ': only print statistics for CM with name or accession <s>'
  id: key
  inputBinding:
    prefix: --key
  type: string
- doc: ': print filter HMM bit scores/E-values, not CM ones'
  id: hmm_only
  inputBinding:
    prefix: --hmmonly
  type: boolean
- doc: ': print CM bit scores/E-values, even for models with 0 basepairs'
  id: no_hmm_only
  inputBinding:
    prefix: --nohmmonly
  type: boolean
