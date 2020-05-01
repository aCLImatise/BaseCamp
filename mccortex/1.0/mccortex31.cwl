#!/usr/bin/env cwl-runner

baseCommand:
- mccortex31
class: CommandLineTool
cwlVersion: v1.0
id: mccortex31
inputs:
- doc: Silence status output normally printed to STDERR
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Overwrite output files if they already exist
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: 'Memory e.g. 1GB [default: 1GB]'
  id: memory
  inputBinding:
    prefix: --memory
  type: string
- doc: 'Hash entries [default: 4M, ~4 million]'
  id: nk_mers
  inputBinding:
    prefix: --nkmers
  type: string
- doc: 'Limit on proccessing threads [default: 2]'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Output file
  id: out
  inputBinding:
    prefix: --out
  type: File
- doc: Links file to load (can specify multiple times)
  id: paths
  inputBinding:
    prefix: --paths
  type: string
