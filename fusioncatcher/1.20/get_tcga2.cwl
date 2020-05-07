class: CommandLineTool
id: get_tcga2.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the known fusion genes are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the known fusion genes are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: data
  doc: The input Excel file containg the data from the article. It should be used
    when there is no internet connection to the site which hosts the article.
  type: string
  inputBinding:
    prefix: --data
- id: skip_filter_overlap
  doc: If set then it filters out the known fusion genes where the (i) genes are fully
    overlapping, or (ii) the genes are partially overlapping and are on the same strand.
    Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --skip-filter-overlap
outputs: []
cwlVersion: v1.1
baseCommand:
- get_tcga2.py
