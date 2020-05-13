class: CommandLineTool
id: annotateInteractions.pl.cwl
inputs:
- id: res
  doc: '<#> (Resolution of analysis, default: auto detect)'
  type: boolean
  inputBinding:
    prefix: -res
- id: hub_count
  doc: '<#> (Minimum number of interactions to define a hub, default: 5)'
  type: boolean
  inputBinding:
    prefix: -hubCount
- id: skip_ann
  doc: (skip all endpoint annotations)
  type: boolean
  inputBinding:
    prefix: -skipann
- id: no_ann
  doc: (skip detailed annotation of endpoints)
  type: boolean
  inputBinding:
    prefix: -noann
- id: washu
  doc: '(create Wash U Epigenome Browser output files: outDirName.bed.gz and tbi)'
  type: boolean
  inputBinding:
    prefix: -washu
- id: cpu
  doc: '# (number of cores to use)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: mind_ist
  doc: '<#> (filter out interactions spaced less than # bp - set high for only interchr)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: max_dist
  doc: '<#> (filter out interactions spaced more than # bp, will remove interchr)'
  type: boolean
  inputBinding:
    prefix: -maxDist
- id: p_value
  doc: '<#> (filter out interactions with p-value greater than #) -dpvalue <#> (filter
    out interactions with p-value (vs bg) greater than #)'
  type: boolean
  inputBinding:
    prefix: -pvalue
- id: zscore
  doc: '<#> (filter out interactions with zscore less than #) -dzscore <#> (filter
    out interactions with zscore (vs bg) less than #)'
  type: boolean
  inputBinding:
    prefix: -zscore
- id: filter
  doc: (only look at interactions with endpoints in peakfile)
  type: string
  inputBinding:
    prefix: -filter
- id: filter_2
  doc: (only look at interactions connecting -filter and -filter2 peak files)
  type: string
  inputBinding:
    prefix: -filter2
- id: ctcf
  doc: <CTCF motif> (calculated directionality stats)
  type: string
  inputBinding:
    prefix: -ctcf
- id: p
  doc: '[peak file 2] ... (Check overlap with peak files)'
  type: string
  inputBinding:
    prefix: -p
- id: d
  doc: '[2nd Hi-C TagDirectory] ...'
  type: string
  inputBinding:
    prefix: -d
- id: circo_s
  doc: (Convert interactions to circos interactions format - stdout)
  type: boolean
  inputBinding:
    prefix: -circos
- id: i
  doc: '[interaction file3] ... (Compare 1st file interactions to these)'
  type: long
  inputBinding:
    prefix: -i
- id: connect
  doc: <peakFile2> (returns association table between sets of peaks)
  type: string
  inputBinding:
    prefix: -connect
- id: pout
  doc: (Convert interactions to a non-redundant peak file, sent to stdout)
  type: boolean
  inputBinding:
    prefix: -pout
- id: g_size
  doc: '<#> (size of genome, default: 2e9)'
  type: boolean
  inputBinding:
    prefix: -gsize
- id: pos
  doc: :XXX-YYY (specific, continuous region)
  type: string
  inputBinding:
    prefix: -pos
- id: bgp
  doc: (peak file)
  type: string
  inputBinding:
    prefix: -bgp
outputs: []
cwlVersion: v1.1
baseCommand:
- annotateInteractions.pl
