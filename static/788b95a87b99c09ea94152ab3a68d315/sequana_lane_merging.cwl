class: CommandLineTool
id: sequana_lane_merging.cwl
inputs:
- id: dry_run
  doc: just createt the script but do not launch them
  type: boolean
  inputBinding:
    prefix: --dry-run
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_lane_merging
