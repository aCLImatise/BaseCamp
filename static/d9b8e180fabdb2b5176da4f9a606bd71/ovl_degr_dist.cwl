class: CommandLineTool
id: ovl_degr_dist.cwl
inputs:
- id: in_adjust_genome_length
  doc: "Adjust genome length to get best match to distrib\ninput from stdin"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_set_overlap_length
  doc: Set minimum overlap length to <n> (default = 40)
  type: long
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ovl-degr-dist
