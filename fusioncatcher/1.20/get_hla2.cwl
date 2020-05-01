#!/usr/bin/env cwl-runner

baseCommand:
- get_hla2.py
class: CommandLineTool
cwlVersion: v1.0
id: get_hla2.py
inputs:
- doc: The name of the organism for which the HLA sequences. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the HLA sequences are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The Ensembl server from where the HLA sequences are downloaded, e.g. 'www.ensembl.org',
    'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is
    'www.ensembl.org'.
  id: server
  inputBinding:
    prefix: --server
  type: string
