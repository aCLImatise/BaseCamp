class: CommandLineTool
id: lc.cwl
inputs:
- id: in_verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_target
  doc: Target assembly name
  type: string
  inputBinding:
    prefix: --target
- id: in_comp_list
  doc: licx file to compile
  type: File
  inputBinding:
    prefix: --complist
- id: in_load
  doc: Reference to load
  type: string
  inputBinding:
    prefix: --load
- id: in_outdir
  doc: Output directory for the .licenses file
  type: File
  inputBinding:
    prefix: --outdir
- id: in_nologo
  doc: Do not display logo
  type: boolean
  inputBinding:
    prefix: --nologo
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory for the .licenses file
  type: File
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- lc
