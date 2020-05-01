#!/usr/bin/env cwl-runner

baseCommand:
- get_chimerdb2.py
class: CommandLineTool
cwlVersion: v1.0
id: get_chimerdb2.py
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
- doc: The ChimerDB 2.0 server from where the known fusion genes are downloaded. Default
    is 'http://ercsb.ewha.ac.kr'.
  id: server
  inputBinding:
    prefix: --server
  type: string
