class: CommandLineTool
id: filter_taxon_pmds.cwl
inputs:
- id: input
  doc: 'specify SAM file to be analysed (default: STDIN)'
  type: string
  inputBinding:
    prefix: --input
- id: discard
  doc: keep or discard entries passing the filter criteria?
  type: string
  inputBinding:
    prefix: --discard
- id: verbose
  doc: print additional information to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: print debug messages to stderr
  type: boolean
  inputBinding:
    prefix: --debug
- id: modify
  doc: modify header by adding PG record
  type: boolean
  inputBinding:
    prefix: --modify
- id: pm_ds
  doc: post-mortem degradation score (PMDS) threshold
  type: string
  inputBinding:
    prefix: --pmds
- id: reads_perc
  doc: attributed read threshold (percent)
  type: string
  inputBinding:
    prefix: --reads_perc
- id: reads_total
  doc: attributed read threshold (total)
  type: string
  inputBinding:
    prefix: --reads_total
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_taxon_pmds
