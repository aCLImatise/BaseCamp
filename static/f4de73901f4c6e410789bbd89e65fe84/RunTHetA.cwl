class: CommandLineTool
id: RunTHetA.py.cwl
inputs:
- id: query_file
  doc: Interval file
  type: string
  inputBinding:
    position: 0
- id: graph_format
  doc: Options are .pdf, .jpg, .png, .eps
  type: string
  inputBinding:
    prefix: --GRAPH_FORMAT
- id: baf
  doc: Option to run the BAF model.
  type: boolean
  inputBinding:
    prefix: --BAF
- id: ratio_dev
  doc: The deviation away from 1.0 that a ratio must be to be considered a potential
    copy number aberration.
  type: string
  inputBinding:
    prefix: --RATIO_DEV
- id: min_frac
  doc: The minimum fraction of the genome that must have a potential copy number aberration
    to be a valid sample for THetA analysis.
  type: long
  inputBinding:
    prefix: --MIN_FRAC
- id: no_clustering
  doc: Option to run THetA without clustering.
  type: boolean
  inputBinding:
    prefix: --NO_CLUSTERING
outputs: []
cwlVersion: v1.1
baseCommand:
- RunTHetA.py
