class: CommandLineTool
id: chain_samples.py.cwl
inputs:
- id: fuzzy_junction
  doc: 'Max allowed distance in junction to be considered identical (default: 0 bp)'
  type: string
  inputBinding:
    prefix: --fuzzy_junction
- id: dun_merge_5_shorter
  doc: "Don't collapse shorter 5' transcripts (default: off)"
  type: boolean
  inputBinding:
    prefix: --dun-merge-5-shorter
- id: max_3_diff
  doc: "Maximum 3' difference allowed (default: 30bp)"
  type: long
  inputBinding:
    prefix: --max_3_diff
- id: cpus
  doc: 'Number of CPUs to use for multi-threading (default: 8)'
  type: string
  inputBinding:
    prefix: --cpus
outputs: []
cwlVersion: v1.1
baseCommand:
- chain_samples.py
