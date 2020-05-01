#!/usr/bin/env cwl-runner

baseCommand:
- get_synonyms.py
class: CommandLineTool
cwlVersion: v1.0
id: get_synonyms.py
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
- doc: The path of Ensembl server from where the data is downloaded. Default is '/pub/current_mysql/'.
  id: server_path
  inputBinding:
    prefix: --server-path
  type: string
- doc: The Ensembl server from where the chromosomes are downloaded. Default is 'ftp.ensembl.org'.
  id: server
  inputBinding:
    prefix: --server
  type: string
