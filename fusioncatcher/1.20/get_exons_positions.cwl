#!/usr/bin/env cwl-runner

baseCommand:
- get_exons_positions.py
class: CommandLineTool
cwlVersion: v1.0
id: get_exons_positions.py
inputs:
- doc: The name of the organism for which the exons positions are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the exons positions are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Genes shorter than this will be skipped and they will not be in the output.
    Default is '150'.
  id: threshold_length
  inputBinding:
    prefix: --threshold_length
  type: string
- doc: The Ensembl server from where the exons positions are downloaded, e.g. 'www.ensembl.org',
    'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is
    'www.ensembl.org'.
  id: server
  inputBinding:
    prefix: --server
  type: string
