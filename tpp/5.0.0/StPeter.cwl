class: CommandLineTool
id: StPeter.cwl
inputs:
- id: degen
  doc: = allow degenerate peptides in protein quantitation. Default is off.
  type: boolean
  inputBinding:
    prefix: --degen
- id: fdr
  doc: = an FDR cutoff value, e.g. 0.01. Default is 0.01
  type: string
  inputBinding:
    prefix: --fdr
- id: intensities
  doc: = Raw peptide level intensities without normalization. Default is false.
  type: boolean
  inputBinding:
    prefix: --intensities
- id: sample_load
  doc: = the amount of protein sample measured, in micrograms, e.g. 0.5. Default is
    0.
  type: string
  inputBinding:
    prefix: --sampleLoad
- id: tolerance
  doc: = mass tolerance for matching MS2 peaks (Daltons). Default is 0.4
  type: string
  inputBinding:
    prefix: --tolerance
outputs: []
cwlVersion: v1.1
baseCommand:
- StPeter
