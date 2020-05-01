#!/usr/bin/env cwl-runner

baseCommand:
- extendSuperReadsForUniqueKmerNeighbors
class: CommandLineTool
cwlVersion: v1.0
id: extendsuperreadsforuniquekmerneighbors
inputs:
- doc: ''
  id: cmdline_parse
  inputBinding:
    position: 0
  type: string
- doc: '*Directory where the super-reads work is done'
  id: dir
  inputBinding:
    prefix: --dir
  type: File
