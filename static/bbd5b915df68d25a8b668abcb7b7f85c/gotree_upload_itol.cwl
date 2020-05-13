class: CommandLineTool
id: gotree_upload_itol.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name
  doc: iTOL tree name prefix (default "tree")
  type: string
  inputBinding:
    prefix: --name
- id: project
  doc: iTOL project to upload the tree
  type: string
  inputBinding:
    prefix: --project
- id: user_id
  doc: iTOL User upload id
  type: string
  inputBinding:
    prefix: --user-id
- id: format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string
  inputBinding:
    prefix: --format
- id: input
  doc: Input tree (default "stdin")
  type: string
  inputBinding:
    prefix: --input
- id: seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: threads
  doc: Number of threads (Max=8) (default 1)
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- gotree
- upload
- itol
