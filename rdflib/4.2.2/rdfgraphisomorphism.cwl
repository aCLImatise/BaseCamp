#!/usr/bin/env cwl-runner

baseCommand:
- rdfgraphisomorphism
class: CommandLineTool
cwlVersion: v1.0
id: rdfgraphisomorphism
inputs:
- doc: ''
  id: file_1
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: file_n
  inputBinding:
    position: 1
  type: File
- doc: Load from STDIN as well
  id: stdin
  inputBinding:
    prefix: --stdin
  type: boolean
- doc: The format of the RDF document(s) to compareOne of 'xml','n3','trix', 'nt',
    or 'rdfa'.  The default is xml
  id: format
  inputBinding:
    prefix: --format
  type: string
