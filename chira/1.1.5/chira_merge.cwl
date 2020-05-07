class: CommandLineTool
id: chira_merge.py.cwl
inputs:
- id: b
  doc: ', --bed            Input BED file with alignments (default: None)'
  type: boolean
  inputBinding:
    prefix: -b
- id: o
  doc: ', --outdir         Output directory path for the whole analysis (default:
    None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: g
  doc: ', --gtf            Annotation GTF file (default: None)'
  type: boolean
  inputBinding:
    prefix: -g
- id: ao
  doc: ', --alignment_overlap  Minimum percentage overlap among BED entries inorder
    to merge. [0-1.0] (default: 0.7)'
  type: boolean
  inputBinding:
    prefix: -ao
- id: so
  doc: ', --segment_overlap  Matching read positions with greater than this % overlap
    are merged into a segment (default: 0.7)'
  type: boolean
  inputBinding:
    prefix: -so
- id: d
  doc: ', --distance       Blockbuster parameter distance (default: 40)'
  type: boolean
  inputBinding:
    prefix: -d
- id: mc
  doc: ', --min_cluster_height  Blockbuster parameter minClusterHeight (default: 50)'
  type: boolean
  inputBinding:
    prefix: -mc
- id: mb
  doc: ', --min_block_height  Blockbuster parameter minBlockHeight (default: 1)'
  type: boolean
  inputBinding:
    prefix: -mb
- id: sc
  doc: ', --scale         Blockbuster parameter scale (default: 0.5)'
  type: boolean
  inputBinding:
    prefix: -sc
outputs: []
cwlVersion: v1.1
baseCommand:
- chira_merge.py
