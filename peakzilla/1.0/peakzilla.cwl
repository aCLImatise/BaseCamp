class: CommandLineTool
id: peakzilla.py.cwl
inputs:
- id: model_peaks
  doc: 'number of most highly enriched regions used to estimate peak size: default
    = 200'
  type: string
  inputBinding:
    prefix: --model_peaks
- id: enrichment_cut_off
  doc: 'minimum cutoff for fold enrichment: default = 2'
  type: string
  inputBinding:
    prefix: --enrichment_cutoff
- id: score_cut_off
  doc: 'minimum cutoff for peak score: default = 1'
  type: string
  inputBinding:
    prefix: --score_cutoff
- id: fragment_size
  doc: 'manually set fragment size in bp: default = estimate from data'
  type: string
  inputBinding:
    prefix: --fragment_size
- id: gaussian
  doc: use empirical model estimate instead of gaussian
  type: boolean
  inputBinding:
    prefix: --gaussian
- id: bed_pe
  doc: input is paired end and in BEDPE format
  type: boolean
  inputBinding:
    prefix: --bedpe
- id: log
  doc: 'directory/filename to store log file to: default = log.txt'
  type: string
  inputBinding:
    prefix: --log
- id: negative
  doc: write negative peaks to negative_peaks.tsv
  type: boolean
  inputBinding:
    prefix: --negative
outputs: []
cwlVersion: v1.1
baseCommand:
- peakzilla.py
