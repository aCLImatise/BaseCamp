#!/usr/bin/env cwl-runner

baseCommand:
- maf_thread_for_species.py
class: CommandLineTool
cwlVersion: v1.0
id: maf_thread_for_species.py
inputs:
- doc: Don't attempt to join blocks, just remove rows.
  id: no_fuse
  inputBinding:
    prefix: --nofuse
  type: boolean
