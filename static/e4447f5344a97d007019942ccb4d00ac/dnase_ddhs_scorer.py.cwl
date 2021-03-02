class: CommandLineTool
id: dnase_ddhs_scorer.py.cwl
inputs:
- id: in_low_ram_mode
  doc: 'low RAM mode (disables caching) (Default: False)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_atacseq_mode_default
  doc: 'ATAC-seq mode (default: False)'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_regions
  doc: The set of BED files you wish to annotate with dDHS scores
  type: string
  inputBinding:
    position: 0
- id: in_treat_dhs
  doc: The DHSs belonging to the Treatment
  type: string
  inputBinding:
    position: 1
- id: in_control_dhs
  doc: The DHSs belonging to the control
  type: string
  inputBinding:
    position: 2
- id: in_reads_treat
  doc: The BAM file containing the Treatment DNase-seq data
  type: string
  inputBinding:
    position: 3
- id: in_reads_control
  doc: The BAM file containing the Control DNase-seq data
  type: string
  inputBinding:
    position: 4
- id: in_output
  doc: filename to write the output to
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dnase_ddhs_scorer.py
