#!/usr/bin/env cwl-runner

baseCommand:
- get_pancreases.py
class: CommandLineTool
cwlVersion: v1.0
id: get_pancreases.py
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
- doc: If set then it filters out the known fusion genes where the (i) genes are fully
    overlapping, or (ii) the genes are partially overlapping and are on the same strand.
    Default is 'False'.
  id: skip_filter_overlap
  inputBinding:
    prefix: --skip-filter-overlap
  type: boolean
