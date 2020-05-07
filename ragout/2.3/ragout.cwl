class: CommandLineTool
id: ragout.cwl
inputs:
- id: recipe_file
  doc: path to recipe file
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: 'output directory (default: ragout-out)'
  type: string
  inputBinding:
    prefix: --outdir
- id: synteny
  doc: 'backend for synteny block decomposition (default: sibelia)'
  type: string
  inputBinding:
    prefix: --synteny
- id: refine
  doc: 'enable refinement with assembly graph (default: False)'
  type: boolean
  inputBinding:
    prefix: --refine
- id: solid_scaffolds
  doc: 'do not break input sequences - disables chimera detection module (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --solid-scaffolds
- id: overwrite
  doc: 'overwrite results from the previous run (default: False)'
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: repeats
  doc: 'enable repeat resolution algorithm (default: False)'
  type: boolean
  inputBinding:
    prefix: --repeats
- id: debug
  doc: 'enable debug output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: threads
  doc: 'number of threads for synteny backend (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- ragout
