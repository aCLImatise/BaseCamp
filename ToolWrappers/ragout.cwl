class: CommandLineTool
id: ragout.cwl
inputs:
- id: in_outdir
  doc: 'output directory (default: ragout-out)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_synteny
  doc: "backend for synteny block decomposition (default:\nsibelia)"
  type: string
  inputBinding:
    prefix: --synteny
- id: in_refine
  doc: 'enable refinement with assembly graph (default: False)'
  type: boolean
  inputBinding:
    prefix: --refine
- id: in_solid_scaffolds
  doc: "do not break input sequences - disables chimera\ndetection module (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --solid-scaffolds
- id: in_overwrite
  doc: "overwrite results from the previous run (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: in_repeats
  doc: 'enable repeat resolution algorithm (default: False)'
  type: boolean
  inputBinding:
    prefix: --repeats
- id: in_debug
  doc: 'enable debug output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_threads
  doc: 'number of threads for synteny backend (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'output directory (default: ragout-out)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- ragout
