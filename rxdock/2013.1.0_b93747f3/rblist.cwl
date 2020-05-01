#!/usr/bin/env cwl-runner

baseCommand:
- rblist
class: CommandLineTool
cwlVersion: v1.0
id: rblist
inputs:
- doc: ''
  id: inputs_d_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: outputs_d_file
  inputBinding:
    position: 1
  type: string
- doc: <InputSDFile> - input ligand SD file
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: <OutputSDFile> - output SD file with descriptors (default=no output)
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: neutral amines, guanidines, imidazoles (default=disabled)
  id: proton_ate
  inputBinding:
    prefix: '- protonate'
  type: string
- doc: carboxylic, sulphur and phosphorous acid groups (default=disabled)
  id: de_proton_ate
  inputBinding:
    prefix: '- deprotonate'
  type: string
- doc: hydrogens present (default=polar hydrogens only)
  id: read
  inputBinding:
    prefix: '- read'
  type: string
- doc: 2ndry amides to trans (default=leave alone)
  id: rotate
  inputBinding:
    prefix: '- rotate'
  type: string
- doc: of ligand atoms and rotable bonds (default = compact table format)
  id: verbose
  inputBinding:
    prefix: '- verbose'
  type: string
