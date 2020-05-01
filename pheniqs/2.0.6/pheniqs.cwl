#!/usr/bin/env cwl-runner

baseCommand:
- pheniqs
class: CommandLineTool
cwlVersion: v1.0
id: pheniqs
inputs:
- doc: Multiplex and Demultiplex annotated DNA sequence reads
  id: mux
  inputBinding:
    position: 0
  type: string
