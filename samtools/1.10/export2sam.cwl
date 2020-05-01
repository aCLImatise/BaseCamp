#!/usr/bin/env cwl-runner

baseCommand:
- export2sam.pl
class: CommandLineTool
cwlVersion: v1.0
id: export2sam.pl
inputs:
- doc: read1 export file or '-' for stdin (mandatory) (file may be gzipped with ".gz"
    extension)
  id: read_1
  inputBinding:
    prefix: --read1
  type: File
- doc: read2 export file or '-' for stdin (file may be gzipped with ".gz" extension)
  id: read_2
  inputBinding:
    prefix: --read2
  type: File
- doc: include reads that failed the basecaller purity filter
  id: no_filter
  inputBinding:
    prefix: --nofilter
  type: boolean
- doc: 'assume export file(s) use logodds quality values as reported by OLB (Pipeline)
    prior to v1.3 (default: phred quality values)'
  id: q_log_odds
  inputBinding:
    prefix: --qlogodds
  type: boolean
