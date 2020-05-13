class: CommandLineTool
id: csb_hhfrag.cwl
inputs:
- id: query
  doc: query profile HMM (e.g. created with csb.apps.buildhmm)
  type: string
  inputBinding:
    position: 0
- id: hh_search
  doc: path to the HHsearch executable (default=hhsearch)
  type: string
  inputBinding:
    prefix: --hhsearch
- id: database
  doc: database directory (containing PDBS25.hhm)
  type: string
  inputBinding:
    prefix: --database
- id: min
  doc: minimum query segment length (default=6)
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: maximum query segment length (default=21)
  type: long
  inputBinding:
    prefix: --max
- id: step
  doc: query segmentation step (default=3)
  type: string
  inputBinding:
    prefix: --step
- id: cpu
  doc: maximum degree of parallelism (default=8)
  type: string
  inputBinding:
    prefix: --cpu
- id: gap_filling
  doc: path to a fragment file (e.g. CSfrag or Rosetta NNmake), which will be used
    to complement low- confidence regions (when specified, a hybrid fragment library
    be produced)
  type: string
  inputBinding:
    prefix: --gap-filling
- id: filtered_filling
  doc: path to a filtered fragment file (e.g. filtered CSfrag-ments), which will be
    mixed with the HHfrag-set and then filtered, resulting in a double-filtered library
  type: string
  inputBinding:
    prefix: --filtered-filling
- id: filtered_map
  doc: make an additional filtered fragment map of centroids and predict torsion angles
    (default=False)
  type: boolean
  inputBinding:
    prefix: --filtered-map
- id: c_alpha
  doc: include also C-alpha vectors in the output (default=False)
  type: boolean
  inputBinding:
    prefix: --c-alpha
- id: confidence_threshold
  doc: confidence threshold for gap filling (default=0.7)
  type: string
  inputBinding:
    prefix: --confidence-threshold
- id: verbosity
  doc: verbosity level (default=2)
  type: string
  inputBinding:
    prefix: --verbosity
- id: output
  doc: output directory (default=.)
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- csb-hhfrag
