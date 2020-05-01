#!/usr/bin/env cwl-runner

baseCommand:
- get_rtcircrna.py
class: CommandLineTool
cwlVersion: v1.0
id: get_rtcircrna.py
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
- doc: The input Excel file containg the data from the article. It should be used
    when there is no internet connection to the site which hosts the article.
  id: data
  inputBinding:
    prefix: --data
  type: string
