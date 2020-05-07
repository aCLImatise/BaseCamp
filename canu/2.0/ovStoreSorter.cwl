class: CommandLineTool
id: ovStoreSorter.cwl
inputs:
- id: o
  doc: path to overlap store to create
  type: string
  inputBinding:
    prefix: -O
- id: s
  doc: path to sequence store
  type: string
  inputBinding:
    prefix: -S
- id: c
  doc: path to ovStoreConfig configuration file
  type: string
  inputBinding:
    prefix: -C
- id: s
  doc: slice to process (1 ... N)
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: maximum memory to use, in gigabytes
  type: string
  inputBinding:
    prefix: -M
- id: delete_early
  doc: remove intermediates as soon as possible (unsafe)
  type: boolean
  inputBinding:
    prefix: -deleteearly
- id: delete_late
  doc: remove intermediates when outputs exist (safe)
  type: boolean
  inputBinding:
    prefix: -deletelate
- id: f
  doc: force a recompute, even if the output exists or appears in progress
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- ovStoreSorter
