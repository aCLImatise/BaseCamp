class: CommandLineTool
id: buildPosMap.cwl
inputs:
- id: in_write_output_here
  doc: write the output here
  type: string
  inputBinding:
    prefix: -o
- id: in_read_assembly_here
  doc: read the assembly from here; default is to read stdin
  type: string
  inputBinding:
    prefix: -i
- id: in_supplied_also_report
  doc: if supplied, also report deleted reads and read/mate library information
  type: string
  inputBinding:
    prefix: -g
- id: in_write_unplaced_surrogate
  doc: write unplaced surrogate reads 'sfgctg' and 'sfgscf' (LARGE!)
  type: boolean
  inputBinding:
    prefix: -U
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- buildPosMap
