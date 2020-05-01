#!/usr/bin/env cwl-runner

baseCommand:
- EukHighConfidenceFilter
class: CommandLineTool
cwlVersion: v1.0
id: eukhighconfidencefilter
inputs:
- doc: ''
  id: e_uk_quality_filter
  inputBinding:
    position: 0
  type: string
