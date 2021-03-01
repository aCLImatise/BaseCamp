class: CommandLineTool
id: sim_cover_depth.cwl
inputs:
- id: in_adjust_genome_length
  doc: "Adjust genome length to get best match to distrib\ninput from stdin"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_set_minimum_overlap
  doc: Set minimum overlap length to <n> (default = 40)
  type: long?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sim-cover-depth
