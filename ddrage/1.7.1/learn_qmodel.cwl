#!/usr/bin/env cwl-runner

baseCommand:
- learn_qmodel
class: CommandLineTool
cwlVersion: v1.0
id: learn_qmodel
inputs:
- doc: 'Output file name/path. Default: custom.qmodel'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Visualize the accumulating profile. And create a pdf version of the plot. Only
    works for read file with more than 10000 reads.
  id: visualize
  inputBinding:
    prefix: --visualize
  type: boolean
- doc: Plot the quality distributions as pdf. (Like visualize, but without the progress
    updates. Only plots the final distributions.)
  id: plot
  inputBinding:
    prefix: --plot
  type: boolean
- doc: Read and plot a .qmodel.npz file.
  id: show
  inputBinding:
    prefix: --show
  type: string
- doc: 'Maximum read length. All values after this position will be truncated and
    not become part of the model. Default: 100'
  id: length
  inputBinding:
    prefix: --length
  type: long
