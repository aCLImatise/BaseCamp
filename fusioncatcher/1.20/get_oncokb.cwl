#!/usr/bin/env cwl-runner

baseCommand:
- get_oncokb.py
class: CommandLineTool
cwlVersion: v1.0
id: get_oncokb.py
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
- doc: The GETx server (thru FusionAnnotator) from where the known fusion genes are
    downloaded. Default is 'http://github.com'.
  id: server
  inputBinding:
    prefix: --server
  type: string
