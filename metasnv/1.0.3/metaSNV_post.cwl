#!/usr/bin/env cwl-runner

baseCommand:
- metaSNV_post.py
class: CommandLineTool
cwlVersion: v1.0
id: metasnv_post.py
inputs:
- doc: project name
  id: proj
  inputBinding:
    position: 0
  type: string
- doc: 'Coverage breadth: minimal horizontal genome coverage percentage per sample
    per species (default: 40.0)'
  id: b
  inputBinding:
    prefix: -b
  type: double
- doc: 'Coverage depth: minimal average vertical genome coverage per sample per species
    (default: 5.0)'
  id: d
  inputBinding:
    prefix: -d
  type: double
- doc: 'Minimum number of samples per species (default: 2)'
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: 'FILTERING STEP II: minimum coverage per position per sample per species (default:
    5.0)'
  id: c
  inputBinding:
    prefix: -c
  type: double
- doc: 'FILTERING STEP II: required proportion of informative samples (coverage non-zero)
    per position (default: 0.5)'
  id: p
  inputBinding:
    prefix: -p
  type: double
- doc: 'Compute diversity measures (default: False)'
  id: div
  inputBinding:
    prefix: -div
  type: boolean
