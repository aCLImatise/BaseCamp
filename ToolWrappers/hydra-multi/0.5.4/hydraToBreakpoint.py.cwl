class: CommandLineTool
id: hydraToBreakpoint.py.cwl
inputs:
- id: in_bedpe_file_entry
  doc: bedpe file in which entry 1 < entry 2; for stdin type "stdin"
  type: File?
  inputBinding:
    prefix: -i
- id: in_slop_hydra_footprint
  doc: "slop out from the HYDRA footprint towards the breakpoint (half\nof average\
    \ library size seems like a good number for predicting\nbreakpoints) [default\
    \ = 200]"
  type: long?
  inputBinding:
    prefix: -t
- id: in_slop_hydra_away
  doc: "slop in towards the HYDRA footprint, away from the breakpoint\n[default =\
    \ 10]"
  type: long?
  inputBinding:
    prefix: -n
- id: in_range_bedpe_coordinates
  doc: "the range of bedpe coordinates considered local [default =\n1000000] Calculated\
    \ by subtracting field 6 from field 2.\n"
  type: long?
  inputBinding:
    prefix: -r
- id: in_c
  doc: ''
  type: File?
  inputBinding:
    prefix: -c
- id: in_b
  doc: ''
  type: string?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- hydraToBreakpoint.py
