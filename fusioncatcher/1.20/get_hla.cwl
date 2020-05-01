#!/usr/bin/env cwl-runner

baseCommand:
- get_hla.py
class: CommandLineTool
cwlVersion: v1.0
id: get_hla.py
inputs:
- doc: The name of the organism for which the sequences are downloaded. Default is
    'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the chromosomes are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The EBI server from where the HLA sequences are downloaded. Default is 'ftp.ebi.ac.uk'.
  id: server
  inputBinding:
    prefix: --server
  type: string
