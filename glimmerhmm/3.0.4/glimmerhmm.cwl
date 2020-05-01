#!/usr/bin/env cwl-runner

baseCommand:
- glimmerhmm
class: CommandLineTool
cwlVersion: v1.0
id: glimmerhmm
inputs:
- doc: ''
  id: genome_1_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: training_dir_for_genome_1
  inputBinding:
    position: 1
  type: string
