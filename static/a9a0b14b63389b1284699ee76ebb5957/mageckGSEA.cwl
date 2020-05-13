class: CommandLineTool
id: mageckGSEA.cwl
inputs:
- id: mage_ckg_sea
  doc: '[-e] [-s] [-c <score_column>] [-p <perm_time>] [-n <pathway_name>] [-o <output_file>]
    -r <rank_file> -g <gmt_file> [--] [--version] [-h]'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mageckGSEA
