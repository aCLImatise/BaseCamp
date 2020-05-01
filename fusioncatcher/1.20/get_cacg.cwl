#!/usr/bin/env cwl-runner

baseCommand:
- get_cacg.py
class: CommandLineTool
cwlVersion: v1.0
id: get_cacg.py
inputs:
- doc: The name of the organism for which the known fusion genes are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the known fusion genes are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The CACG server from where the known conjoined genes are downloaded. Default
    is 'http://cgc.kribb.re.kr'.
  id: server
  inputBinding:
    prefix: --server
  type: string
