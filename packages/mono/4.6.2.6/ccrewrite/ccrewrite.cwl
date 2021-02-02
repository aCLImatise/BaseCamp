class: CommandLineTool
id: ccrewrite.cwl
inputs:
- id: in_debug
  doc: Use MDB or PDB debug information (default=true).
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_write_pdb_file
  doc: Write MDB or PDB file (default=true).
  type: boolean
  inputBinding:
    prefix: --writePDBFile
- id: in_rewrite
  doc: Rewrite the assembly (default=true).
  type: boolean
  inputBinding:
    prefix: --rewrite
- id: in_assembly
  doc: Assembly to rewrite.
  type: string
  inputBinding:
    prefix: --assembly
- id: in_break_into_debugger
  doc: Break into debugger on contract failure.
  type: boolean
  inputBinding:
    prefix: --breakIntoDebugger
- id: in_throw_on_failure
  doc: Throw ContractException on contract failure.
  type: boolean
  inputBinding:
    prefix: --throwOnFailure
- id: in_output
  doc: Output filename of rewritten file.
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output filename of rewritten file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- ccrewrite
