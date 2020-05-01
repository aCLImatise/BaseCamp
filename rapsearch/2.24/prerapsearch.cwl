#!/usr/bin/env cwl-runner

baseCommand:
- prerapsearch
class: CommandLineTool
cwlVersion: v1.0
id: prerapsearch
inputs:
- doc: (splits the database into specified number of files)
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: /t (output the full fasta headers of subjects to faicilitate anonotation)
  id: f
  inputBinding:
    prefix: -f
  type: string
