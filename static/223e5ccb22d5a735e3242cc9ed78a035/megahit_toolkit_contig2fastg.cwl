class: CommandLineTool
id: ../../../megahit_toolkit_contig2fastg.cwl
inputs:
- id: contig_two_fast_g
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: km_er_size
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: k_km_er_size_dot_contigs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- megahit_toolkit
- contig2fastg
