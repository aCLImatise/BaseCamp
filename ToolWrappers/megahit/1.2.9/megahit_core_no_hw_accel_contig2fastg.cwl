class: CommandLineTool
id: megahit_core_no_hw_accel_contig2fastg.cwl
inputs:
- id: in_contig_two_fast_g
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_km_er_size
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_k_km_er_size_dot_contigs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- megahit_core_no_hw_accel
- contig2fastg
