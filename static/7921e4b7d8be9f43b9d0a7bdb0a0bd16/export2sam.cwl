class: CommandLineTool
id: export2sam.pl.cwl
inputs:
- id: read_1
  doc: read1 export file or '-' for stdin (mandatory) (file may be gzipped with ".gz"
    extension)
  type: File
  inputBinding:
    prefix: --read1
- id: read_2
  doc: read2 export file or '-' for stdin (file may be gzipped with ".gz" extension)
  type: File
  inputBinding:
    prefix: --read2
- id: no_filter
  doc: include reads that failed the basecaller purity filter
  type: boolean
  inputBinding:
    prefix: --nofilter
- id: q_log_odds
  doc: 'assume export file(s) use logodds quality values as reported by OLB (Pipeline)
    prior to v1.3 (default: phred quality values)'
  type: boolean
  inputBinding:
    prefix: --qlogodds
outputs: []
cwlVersion: v1.1
baseCommand:
- export2sam.pl
