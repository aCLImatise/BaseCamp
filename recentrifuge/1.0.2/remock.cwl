#!/usr/bin/env cwl-runner

baseCommand:
- remock
class: CommandLineTool
cwlVersion: v1.0
id: remock
inputs:
- doc: 'Explicit source: Centrifuge output file as source'
  id: file
  inputBinding:
    prefix: --file
  type: File
- doc: Random score generated. Please provide the minimum hit length (mhl) of the
    classification; 15 by default
  id: random
  inputBinding:
    prefix: --random
  type: string
- doc: increase output verbosity and perform additional checks
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Mock files to be read for mock Centrifuge sequences layout. If a single directory
    is entered, every .mck file inside will be taken as a different sample. Multiple
    -f is available to include several samples.
  id: mock
  inputBinding:
    prefix: --mock
  type: File
- doc: Excel file with the mock layout.
  id: xcel
  inputBinding:
    prefix: --xcel
  type: File
- doc: generate mock data ready for testing Recentrifuge
  id: test
  inputBinding:
    prefix: --test
  type: boolean
- doc: path for the nodes information files (nodes.dmp and names.dmp from NCBI)
  id: nodes_path
  inputBinding:
    prefix: --nodespath
  type: File
