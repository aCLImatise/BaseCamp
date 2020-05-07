class: CommandLineTool
id: remove_custom_feature.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the list of allowed candidate fusion genes
    is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the list of allowed candidate fusion genes is generated.
    Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: transcripts
  doc: List of transcripts which should be removed.
  type: string
  inputBinding:
    prefix: --transcripts
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_custom_feature.py
