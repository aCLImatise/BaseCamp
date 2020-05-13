class: CommandLineTool
id: fermi_remap.cwl
inputs:
- id: reads_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: contigs_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: l
  doc: skip ending INT bases of a read pair [50]
  type: long
  inputBinding:
    prefix: -l
- id: c
  doc: minimum paired-end coverage [0]
  type: long
  inputBinding:
    prefix: -c
- id: d
  doc: maximum insert size (external distance) [1000]
  type: long
  inputBinding:
    prefix: -D
- id: r
  doc: rank [null]
  type: File
  inputBinding:
    prefix: -r
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- remap
