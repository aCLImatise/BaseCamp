#!/usr/bin/env cwl-runner

baseCommand:
- get_cosmic.py
class: CommandLineTool
cwlVersion: v1.0
id: get_cosmic.py
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
- doc: The COSMIC server from where the known fusion genes are downloaded. Default
    is 'http://cancer.sanger.ac.uk'.
  id: server
  inputBinding:
    prefix: --server
  type: string
- doc: The input TSV.GZ file containg the data from the COSMIC database. It should
    be used when the COSMIC website cannot be reached. Default is 'none'.
  id: data
  inputBinding:
    prefix: --data
  type: string
