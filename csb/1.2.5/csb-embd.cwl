#!/usr/bin/env cwl-runner

baseCommand:
- csb-embd
class: CommandLineTool
cwlVersion: v1.0
id: csb-embd
inputs:
- doc: Input Cryo EM file in CCP4 MRC format
  id: map_file
  inputBinding:
    position: 0
  type: string
- doc: size of the point spread function (default=15)
  id: psf_size
  inputBinding:
    prefix: --psf-size
  type: string
- doc: output directory of the sharpened maps (default=.)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: number of iterations (default=1000)
  id: iterations
  inputBinding:
    prefix: --iterations
  type: string
- doc: create a map file each f iterations (default=50)
  id: output_frequency
  inputBinding:
    prefix: --output-frequency
  type: string
- doc: verbose mode (default=False)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
