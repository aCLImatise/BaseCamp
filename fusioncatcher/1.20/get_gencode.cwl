#!/usr/bin/env cwl-runner

baseCommand:
- get_gencode.py
class: CommandLineTool
cwlVersion: v1.0
id: get_gencode.py
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
- doc: The Gencode server from where the gene annotations are downloaded. Default
    is 'ftp.ebi.ac.uk'.
  id: server
  inputBinding:
    prefix: --server
  type: string
