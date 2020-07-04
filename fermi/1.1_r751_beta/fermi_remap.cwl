class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fermi_remap.cwl
inputs:
- id: skip_ending_bases
  doc: skip ending INT bases of a read pair [0]
  type: long
  inputBinding:
    prefix: -l
- id: minimum_pairedend_coverage
  doc: minimum paired-end coverage [0]
  type: long
  inputBinding:
    prefix: -c
- id: maximum_insert_size
  doc: maximum insert size (external distance) [1000]
  type: long
  inputBinding:
    prefix: -D
- id: rank
  doc: rank [null]
  type: File
  inputBinding:
    prefix: -r
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: reads_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: contigs_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- remap
