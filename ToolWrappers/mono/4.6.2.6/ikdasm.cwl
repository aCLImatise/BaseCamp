class: CommandLineTool
id: ikdasm.cwl
inputs:
- id: in_out
  doc: Direct output to file rather than stdout
  type: File
  inputBinding:
    prefix: -out
- id: in_assembly
  doc: Dumps the contents of the Assembly table
  type: boolean
  inputBinding:
    prefix: -assembly
- id: in_assembly_ref
  doc: Dumps the contents of the AssemblyRef table
  type: boolean
  inputBinding:
    prefix: -assemblyref
- id: in_module_ref
  doc: Dumps the contents of the ModuleRef table
  type: boolean
  inputBinding:
    prefix: -moduleref
- id: in_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Direct output to file rather than stdout
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- ikdasm
