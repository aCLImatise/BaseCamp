class: CommandLineTool
id: gotree_repopulate.cwl
inputs:
- id: in_id_groups
  doc: File with groups of identical tips (default "none")
  type: File?
  inputBinding:
    prefix: --id-groups
- id: in_input
  doc: Input tree (default "stdin")
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Renamed tree output file (default "stdout")
  type: File?
  inputBinding:
    prefix: --output
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string?
  inputBinding:
    prefix: --format
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (Max=2) (default 1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_branches_dot
  doc: 'Example with Tip1,Tip2 :'
  type: string
  inputBinding:
    position: 0
- id: in_before
  doc: '|   After (if l>0.0)  |  After (if l=0.0)'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Renamed tree output file (default "stdout")
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gotree:0.4.1--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- gotree
- repopulate
