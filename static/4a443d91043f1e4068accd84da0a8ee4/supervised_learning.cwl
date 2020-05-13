class: CommandLineTool
id: supervised_learning.py.cwl
inputs:
- id: input_data
  doc: Input data file containing predictors (e.g. otu table) or a directory of otu
    tables [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_data
- id: mapping_file
  doc: File containing meta data (response variables) [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_file
- id: category
  doc: Name of meta data category to predict [REQUIRED]
  type: string
  inputBinding:
    prefix: --category
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- supervised_learning.py
