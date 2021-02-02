class: CommandLineTool
id: frgs2clones.cwl
inputs:
- id: in_read_fragments_gatekeeper
  doc: read fragments from this gatekeeper store
  type: string
  inputBinding:
    prefix: -g
- id: in_build_alignment_overlapping
  doc: build an alignment for overlapping fragments
  type: boolean
  inputBinding:
    prefix: -C
- id: in_build_scaffold_mated
  doc: build a scaffold for non-overlapping mated fragments
  type: boolean
  inputBinding:
    prefix: -N
- id: in_use_real_uids
  doc: use real UIDs from the UID server
  type: boolean
  inputBinding:
    prefix: -U
- id: in_opts
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- frgs2clones
