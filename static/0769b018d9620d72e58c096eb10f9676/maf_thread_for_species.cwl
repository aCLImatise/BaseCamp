class: CommandLineTool
id: maf_thread_for_species.py.cwl
inputs:
- id: no_fuse
  doc: Don't attempt to join blocks, just remove rows.
  type: boolean
  inputBinding:
    prefix: --nofuse
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_thread_for_species.py
