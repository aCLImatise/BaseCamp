#!/usr/bin/env cwl-runner

baseCommand:
- annotateInteractions.pl
class: CommandLineTool
cwlVersion: v1.0
id: annotateinteractions.pl
inputs:
- doc: '<#> (Resolution of analysis, default: auto detect)'
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: '<#> (Minimum number of interactions to define a hub, default: 5)'
  id: hub_count
  inputBinding:
    prefix: -hubCount
  type: boolean
- doc: (skip all endpoint annotations)
  id: skip_ann
  inputBinding:
    prefix: -skipann
  type: boolean
- doc: (skip detailed annotation of endpoints)
  id: no_ann
  inputBinding:
    prefix: -noann
  type: boolean
- doc: '(create Wash U Epigenome Browser output files: outDirName.bed.gz and tbi)'
  id: washu
  inputBinding:
    prefix: -washu
  type: boolean
- doc: '# (number of cores to use)'
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: '<#> (filter out interactions spaced less than # bp - set high for only interchr)'
  id: mind_ist
  inputBinding:
    prefix: -minDist
  type: boolean
- doc: '<#> (filter out interactions spaced more than # bp, will remove interchr)'
  id: max_dist
  inputBinding:
    prefix: -maxDist
  type: boolean
- doc: '<#> (filter out interactions with p-value greater than #) -dpvalue <#> (filter
    out interactions with p-value (vs bg) greater than #)'
  id: p_value
  inputBinding:
    prefix: -pvalue
  type: boolean
- doc: '<#> (filter out interactions with zscore less than #) -dzscore <#> (filter
    out interactions with zscore (vs bg) less than #)'
  id: zscore
  inputBinding:
    prefix: -zscore
  type: boolean
- doc: (only look at interactions with endpoints in peakfile)
  id: filter
  inputBinding:
    prefix: -filter
  type: string
- doc: (only look at interactions connecting -filter and -filter2 peak files)
  id: filter_2
  inputBinding:
    prefix: -filter2
  type: string
- doc: <CTCF motif> (calculated directionality stats)
  id: ctcf
  inputBinding:
    prefix: -ctcf
  type: string
- doc: '[peak file 2] ... (Check overlap with peak files)'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: '[2nd Hi-C TagDirectory] ...'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: (Convert interactions to circos interactions format - stdout)
  id: circo_s
  inputBinding:
    prefix: -circos
  type: boolean
- doc: '[interaction file3] ... (Compare 1st file interactions to these)'
  id: i
  inputBinding:
    prefix: -i
  type: long
- doc: <peakFile2> (returns association table between sets of peaks)
  id: connect
  inputBinding:
    prefix: -connect
  type: string
- doc: (Convert interactions to a non-redundant peak file, sent to stdout)
  id: pout
  inputBinding:
    prefix: -pout
  type: boolean
- doc: '<#> (size of genome, default: 2e9)'
  id: g_size
  inputBinding:
    prefix: -gsize
  type: boolean
- doc: :XXX-YYY (specific, continuous region)
  id: pos
  inputBinding:
    prefix: -pos
  type: string
- doc: (peak file)
  id: bgp
  inputBinding:
    prefix: -bgp
  type: string
