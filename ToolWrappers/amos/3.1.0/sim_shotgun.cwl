class: CommandLineTool
id: sim_shotgun.cwl
inputs:
- id: in_set_minimum_reads
  doc: Set minimum reads in a contig to <n> (default = 2)
  type: long
  inputBinding:
    prefix: -c
- id: in_set_overlap_length
  doc: Set minimum overlap length to <n> (default = 40)
  type: long
  inputBinding:
    prefix: -o
- id: in_set_readlength_deviation
  doc: Set read-length std deviation to <n> (default = 0)
  type: long
  inputBinding:
    prefix: -s
- id: in_coverage
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_read_len
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_genome_len
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sim-shotgun
