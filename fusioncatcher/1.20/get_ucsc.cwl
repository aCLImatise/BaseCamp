#!/usr/bin/env cwl-runner

baseCommand:
- get_ucsc.py
class: CommandLineTool
cwlVersion: v1.0
id: get_ucsc.py
inputs:
- doc: The name of the organism for which the chromosomes are downloaded, e.g. homo_sapiens,
    mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the chromosomes are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The UCSC server from where the gene annotations are downloaded. Default is
    'hgdownload.cse.ucsc.edu'.
  id: server
  inputBinding:
    prefix: --server
  type: string
