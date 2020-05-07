class: CommandLineTool
id: dnase_ddhs_scorer.py.cwl
inputs:
- id: regions
  doc: The set of BED files you wish to annotate with dDHS scores
  type: string
  inputBinding:
    position: 0
- id: treat_dhs
  doc: The DHSs belonging to the Treatment
  type: string
  inputBinding:
    position: 1
- id: control_dhs
  doc: The DHSs belonging to the control
  type: string
  inputBinding:
    position: 2
- id: reads_treat
  doc: The BAM file containing the Treatment DNase-seq data
  type: string
  inputBinding:
    position: 3
- id: reads_control
  doc: The BAM file containing the Control DNase-seq data
  type: string
  inputBinding:
    position: 4
- id: output
  doc: filename to write the output to
  type: string
  inputBinding:
    position: 5
- id: l
  doc: 'low RAM mode (disables caching) (Default: False)'
  type: boolean
  inputBinding:
    prefix: -l
- id: a
  doc: 'ATAC-seq mode (default: False)'
  type: boolean
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- dnase_ddhs_scorer.py
