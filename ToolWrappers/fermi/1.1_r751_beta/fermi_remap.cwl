class: CommandLineTool
id: fermi_remap.cwl
inputs:
- id: in_skip_ending_bases
  doc: skip ending INT bases of a read pair [0]
  type: long?
  inputBinding:
    prefix: -l
- id: in_minimum_pairedend_coverage
  doc: minimum paired-end coverage [0]
  type: long?
  inputBinding:
    prefix: -c
- id: in_maximum_insert_size
  doc: maximum insert size (external distance) [1000]
  type: long?
  inputBinding:
    prefix: -D
- id: in_rank
  doc: rank [null]
  type: File?
  inputBinding:
    prefix: -r
- id: in_number_of_threads
  doc: number of threads [1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_reads_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_contigs_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fermi
- remap
