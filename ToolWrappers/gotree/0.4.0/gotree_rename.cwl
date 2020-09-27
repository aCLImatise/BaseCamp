class: CommandLineTool
id: gotree_rename.cwl
inputs:
- id: in_length
  doc: Length of automatically generated id. Only with --auto (default 10)
  type: long
  inputBinding:
    prefix: --length
- id: in_tips
  doc: true by default. To inactivate it, you must specify --tips=false .
  type: string
  inputBinding:
    prefix: --tips
- id: in_auto
  doc: Renames automatically tips with auto generated id of length 10.
  type: boolean
  inputBinding:
    prefix: --auto
- id: in_input
  doc: Input tree (default "stdin")
  type: string
  inputBinding:
    prefix: --input
- id: in_internal
  doc: Internal nodes are taken into account
  type: boolean
  inputBinding:
    prefix: --internal
- id: in_map
  doc: Tip name map file (default "none")
  type: File
  inputBinding:
    prefix: --map
- id: in_output
  doc: Renamed tree output file (default "stdout")
  type: File
  inputBinding:
    prefix: --output
- id: in_regexp
  doc: Regexp to get matching tip/node names (default "none")
  type: string
  inputBinding:
    prefix: --regexp
- id: in_replace
  doc: String replacement to the given regexp (default "none")
  type: string
  inputBinding:
    prefix: --replace
- id: in_revert
  doc: Revert orientation of map file
  type: boolean
  inputBinding:
    prefix: --revert
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string
  inputBinding:
    prefix: --format
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (Max=8) (default 1)
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Renamed tree output file (default "stdout")
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- gotree
- rename
