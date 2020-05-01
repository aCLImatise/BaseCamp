#!/usr/bin/env cwl-runner

baseCommand:
- download_picrust_files.py
class: CommandLineTool
cwlVersion: v1.0
id: download_picrust_files.py
inputs:
- doc: 'Print information during execution -- useful for debugging [default: False]'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Type of functional predictions. Valid choices are: ko, cog, rfam [default:
    ko]'
  id: type_of_prediction
  inputBinding:
    prefix: --type_of_prediction
  type: string
- doc: 'Version of GreenGenes that was used for OTU picking. Valid choices are: 13_5,
    18may2012 [default: 13_5]'
  id: gg_version
  inputBinding:
    prefix: --gg_version
  type: string
- doc: 'Download confidence interval files (only available for GreenGenes 13_5) [default:
    False]'
  id: with_confidence
  inputBinding:
    prefix: --with_confidence
  type: boolean
- doc: 'Force download of files (i.e. overwrite existing) [default: False]'
  id: force
  inputBinding:
    prefix: --force
  type: boolean
