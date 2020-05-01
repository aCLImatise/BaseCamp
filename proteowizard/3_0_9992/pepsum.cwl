#!/usr/bin/env cwl-runner

baseCommand:
- pepsum
class: CommandLineTool
cwlVersion: v1.0
id: pepsum
inputs:
- doc: ''
  id: pep_xml_filename
  inputBinding:
    position: 0
  type: string
