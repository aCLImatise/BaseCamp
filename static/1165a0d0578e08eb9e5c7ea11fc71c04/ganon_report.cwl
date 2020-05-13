class: CommandLineTool
id: ganon_report.cwl
inputs:
- id: r
  doc: '[RANKS [RANKS ...]], --ranks [RANKS [RANKS ...]] Ranks for the final report.
    "all" for all identified ranks. empty for default ranks: superkingdom phylum class
    order family genus species species+ assembly'
  type: boolean
  inputBinding:
    prefix: -r
- id: min_matches
  doc: 'Min. number of matches to output. 0 for all. Default: 0'
  type: long
  inputBinding:
    prefix: --min-matches
- id: min_matches_perc
  doc: 'Min. percentage of matches to output. 0 for all. Default: 0'
  type: long
  inputBinding:
    prefix: --min-matches-perc
- id: output_report
  doc: 'Output file for report. Default: STDOUT'
  type: string
  inputBinding:
    prefix: --output-report
- id: rep_file
  doc: '{prefix}.rep file output from ganon classify'
  type: string
  inputBinding:
    prefix: --rep-file
- id: d
  doc: '[db_prefix [db_prefix ...]], --db-prefix [db_prefix [db_prefix ...]] Database
    prefix[es] used for classification.'
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- ganon
- report
