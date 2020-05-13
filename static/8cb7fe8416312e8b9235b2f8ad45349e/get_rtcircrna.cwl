class: CommandLineTool
id: get_rtcircrna.py.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- get_rtcircrna.py
