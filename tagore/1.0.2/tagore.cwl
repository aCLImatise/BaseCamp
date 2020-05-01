#!/usr/bin/env cwl-runner

baseCommand:
- tagore
class: CommandLineTool
cwlVersion: v1.0
id: tagore
inputs:
- doc: Input BED-like file
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: '[output file prefix], --prefix [output file prefix]  Output prefix [Default:
    "out"]'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[hg78/hg38], --build [hg78/hg38]                     Human genome build to
    use [Default: hg38]'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: Overwrite output files if they exist already
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: '[png/pdf], --oformat [png/pdf]                    Output format for conversion
    (pdf requires rsvg-convert)'
  id: of_mt
  inputBinding:
    prefix: -ofmt
  type: boolean
- doc: Display verbose output
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
