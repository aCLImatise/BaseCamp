class: CommandLineTool
id: download_picrust_files.py.cwl
inputs:
- id: verbose
  doc: 'Print information during execution -- useful for debugging [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: type_of_prediction
  doc: 'Type of functional predictions. Valid choices are: ko, cog, rfam [default:
    ko]'
  type: string
  inputBinding:
    prefix: --type_of_prediction
- id: gg_version
  doc: 'Version of GreenGenes that was used for OTU picking. Valid choices are: 13_5,
    18may2012 [default: 13_5]'
  type: string
  inputBinding:
    prefix: --gg_version
- id: with_confidence
  doc: 'Download confidence interval files (only available for GreenGenes 13_5) [default:
    False]'
  type: boolean
  inputBinding:
    prefix: --with_confidence
- id: force
  doc: 'Force download of files (i.e. overwrite existing) [default: False]'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- download_picrust_files.py
