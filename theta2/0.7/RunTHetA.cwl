#!/usr/bin/env cwl-runner

baseCommand:
- RunTHetA.py
class: CommandLineTool
cwlVersion: v1.0
id: runtheta.py
inputs:
- doc: Interval file
  id: query_file
  inputBinding:
    position: 0
  type: string
- doc: Options are .pdf, .jpg, .png, .eps
  id: graph_format
  inputBinding:
    prefix: --GRAPH_FORMAT
  type: string
- doc: Option to run the BAF model.
  id: baf
  inputBinding:
    prefix: --BAF
  type: boolean
- doc: The deviation away from 1.0 that a ratio must be to be considered a potential
    copy number aberration.
  id: ratio_dev
  inputBinding:
    prefix: --RATIO_DEV
  type: string
- doc: The minimum fraction of the genome that must have a potential copy number aberration
    to be a valid sample for THetA analysis.
  id: min_frac
  inputBinding:
    prefix: --MIN_FRAC
  type: long
- doc: Option to run THetA without clustering.
  id: no_clustering
  inputBinding:
    prefix: --NO_CLUSTERING
  type: boolean
