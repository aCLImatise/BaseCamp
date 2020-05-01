#!/usr/bin/env cwl-runner

baseCommand:
- CCAT
class: CommandLineTool
cwlVersion: v1.0
id: ccat
inputs:
- doc: ''
  id: library_1tag_filename
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: library_2tag_filename
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: chromosome_length_filename
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: config_file_name
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: project_name
  inputBinding:
    position: 4
  type: string
