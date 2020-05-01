#!/usr/bin/env cwl-runner

baseCommand:
- get_mitelman.py
class: CommandLineTool
cwlVersion: v1.0
id: get_mitelman.py
inputs:
- doc: The name of the organism for which the known fusion genes are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The URL for Mitelman database dump file. Default is 'https://storage.cloud.google.com/mitelman-data-
    files/mitelman_db.zip'.
  id: url
  inputBinding:
    prefix: --url
  type: string
- doc: The output directory where the known fusion genes are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
