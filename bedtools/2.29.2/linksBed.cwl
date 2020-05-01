#!/usr/bin/env cwl-runner

baseCommand:
- linksBed
class: CommandLineTool
cwlVersion: v1.0
id: linksbed
inputs:
- doc: 'The browser basename.  Default: http://genome.ucsc.edu '
  id: base
  inputBinding:
    prefix: -base
  type: boolean
- doc: 'The organism. Default: human'
  id: org
  inputBinding:
    prefix: -org
  type: boolean
- doc: 'The build.  Default: hg18'
  id: db
  inputBinding:
    prefix: -db
  type: boolean
