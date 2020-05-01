#!/usr/bin/env cwl-runner

baseCommand:
- csb-hhfrag
class: CommandLineTool
cwlVersion: v1.0
id: csb-hhfrag
inputs:
- doc: query profile HMM (e.g. created with csb.apps.buildhmm)
  id: query
  inputBinding:
    position: 0
  type: string
- doc: path to the HHsearch executable (default=hhsearch)
  id: hh_search
  inputBinding:
    prefix: --hhsearch
  type: string
- doc: database directory (containing PDBS25.hhm)
  id: database
  inputBinding:
    prefix: --database
  type: string
- doc: minimum query segment length (default=6)
  id: min
  inputBinding:
    prefix: --min
  type: long
- doc: maximum query segment length (default=21)
  id: max
  inputBinding:
    prefix: --max
  type: long
- doc: query segmentation step (default=3)
  id: step
  inputBinding:
    prefix: --step
  type: string
- doc: maximum degree of parallelism (default=8)
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
- doc: path to a fragment file (e.g. CSfrag or Rosetta NNmake), which will be used
    to complement low- confidence regions (when specified, a hybrid fragment library
    be produced)
  id: gap_filling
  inputBinding:
    prefix: --gap-filling
  type: string
- doc: path to a filtered fragment file (e.g. filtered CSfrag-ments), which will be
    mixed with the HHfrag-set and then filtered, resulting in a double-filtered library
  id: filtered_filling
  inputBinding:
    prefix: --filtered-filling
  type: string
- doc: make an additional filtered fragment map of centroids and predict torsion angles
    (default=False)
  id: filtered_map
  inputBinding:
    prefix: --filtered-map
  type: boolean
- doc: include also C-alpha vectors in the output (default=False)
  id: c_alpha
  inputBinding:
    prefix: --c-alpha
  type: boolean
- doc: confidence threshold for gap filling (default=0.7)
  id: confidence_threshold
  inputBinding:
    prefix: --confidence-threshold
  type: string
- doc: verbosity level (default=2)
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: output directory (default=.)
  id: output
  inputBinding:
    prefix: --output
  type: string
