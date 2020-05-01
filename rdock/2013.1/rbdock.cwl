#!/usr/bin/env cwl-runner

baseCommand:
- rbdock
class: CommandLineTool
cwlVersion: v1.0
id: rbdock
inputs:
- doc: SD file
  id: input
  inputBinding:
    prefix: '- input'
  type: string
- doc: for output file(s)
  id: root
  inputBinding:
    prefix: '- root'
  type: string
- doc: 'file '
  id: receptor
  inputBinding:
    prefix: '- receptor'
  type: string
- doc: parameter file
  id: docking
  inputBinding:
    prefix: '- docking'
  type: string
- doc: runs/ligand (default=1)
  id: number
  inputBinding:
    prefix: '- number'
  type: string
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
- doc: OR filter file name
  id: score
  inputBinding:
    prefix: '- score'
  type: string
- doc: score threshold is met (use with -t <targetScore>, default=terminate ligand)
  id: continue
  inputBinding:
    prefix: '- continue'
  type: string
- doc: level for debugging (0 = minimal, >0 = more verbose)
  id: controls
  inputBinding:
    prefix: '- controls'
  type: string
- doc: seed (default=from sys clock)
  id: random
  inputBinding:
    prefix: '- random'
  type: string
