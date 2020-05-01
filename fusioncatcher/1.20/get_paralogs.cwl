#!/usr/bin/env cwl-runner

baseCommand:
- get_paralogs.py
class: CommandLineTool
cwlVersion: v1.0
id: get_paralogs.py
inputs:
- doc: The name of the organism for which the paralog genes are downloaded, e.g. homo_sapiens,
    mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the paralog genes are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The Ensembl server from where the paralog genes are downloaded, e.g. 'www.ensembl.org',
    'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is
    'www.ensembl.org'.
  id: server
  inputBinding:
    prefix: --server
  type: string
