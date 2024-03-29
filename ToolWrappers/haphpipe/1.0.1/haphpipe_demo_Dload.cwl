class: CommandLineTool
id: haphpipe_demo_Dload.cwl
inputs:
- id: in_outdir
  doc: 'Output directory (default: .)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_ref_only
  doc: "Does not run entire demo, only pulls the reference files\n(default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --refonly
- id: in_ha_ph_pipe
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_demo
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory (default: .)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- haphpipe
- demo
- Dload
