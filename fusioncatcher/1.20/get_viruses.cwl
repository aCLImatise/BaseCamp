#!/usr/bin/env cwl-runner

baseCommand:
- get_viruses.py
class: CommandLineTool
cwlVersion: v1.0
id: get_viruses.py
inputs:
- doc: The output directory where the chromosomes are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The NCBI server from where the viral genomes are downloaded. Default is 'ftp.ncbi.nlm.nih.gov'.
  id: server
  inputBinding:
    prefix: --server
  type: string
