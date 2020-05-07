class: CommandLineTool
id: categorize_by_function.py.cwl
inputs:
- id: input_fp
  doc: the predicted metagenome table [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
- id: output_fp
  doc: the resulting table [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
- id: metadata_category
  doc: 'the metadata category that describes the hierarchy (e.g. KEGG_Pathways, COG_Category,
    etc.). Note: RFAM predictions can not be collapsed because there are no categories
    to group them into. [REQUIRED]'
  type: string
  inputBinding:
    prefix: --metadata_category
- id: level
  doc: the level in the hierarchy to collapse to. A value of 0 is not allowed, a value
    of 1 is the highest level, and any higher value nears the leaves of the hierarchy.
    For instance, if the hierarchy contains 4 levels, specifying 3 would collapse
    at one level above being fully specified. [REQUIRED]
  type: string
  inputBinding:
    prefix: --level
outputs: []
cwlVersion: v1.1
baseCommand:
- categorize_by_function.py
