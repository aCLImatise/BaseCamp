class: CommandLineTool
id: finalizeBreakpoints.py.cwl
inputs:
- id: in_master_assembled_file
  doc: Master assembled cluster file
  type: File?
  inputBinding:
    prefix: -i
- id: in_stub_output_files
  doc: Stub for output files
  type: string?
  inputBinding:
    prefix: -o
- id: in_amount_use_default
  doc: "The amount of memory to use for UNIX sort.  Default = 2G.  See\n\"man sort\"\
    \ for valid values."
  type: long?
  inputBinding:
    prefix: -m
- id: in_maximum_intrachromosomal_distance
  doc: "Maximum intrachromosomal distance allowed before a variant is\nconsidered\
    \ to be between unlinked DNA segments.\n"
  type: long?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- finalizeBreakpoints.py
