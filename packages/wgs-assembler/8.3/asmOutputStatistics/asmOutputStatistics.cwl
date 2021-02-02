class: CommandLineTool
id: asmOutputStatistics.cwl
inputs:
- id: in_read_assembly_here
  doc: read the assembly from here
  type: File
  inputBinding:
    prefix: -a
- id: in_gatekeeper_store
  doc: gatekeeper store
  type: string
  inputBinding:
    prefix: -G
- id: in_overlap_store
  doc: overlap store
  type: string
  inputBinding:
    prefix: -O
- id: in_v_tigstore_version
  doc: v    tigStore and version
  type: string
  inputBinding:
    prefix: -T
- id: in_v_scaffolder_checkpoint
  doc: v     scaffolder checkpoint file name and version
  type: File
  inputBinding:
    prefix: -C
- id: in_write_output_here
  doc: write the output here
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- asmOutputStatistics
