class: CommandLineTool
id: gotree_upload_itol.cwl
inputs:
- id: in_name
  doc: iTOL tree name prefix (default "tree")
  type: string?
  inputBinding:
    prefix: --name
- id: in_project
  doc: iTOL project to upload the tree
  type: string?
  inputBinding:
    prefix: --project
- id: in_user_id
  doc: iTOL User upload id
  type: string?
  inputBinding:
    prefix: --user-id
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string?
  inputBinding:
    prefix: --format
- id: in_input
  doc: Input tree (default "stdin")
  type: string?
  inputBinding:
    prefix: --input
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gotree:0.4.1--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- gotree
- upload
- itol
