class: CommandLineTool
id: pyprophet_subsample.cwl
inputs:
- id: in
  doc: OpenSWATH input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: out
  doc: Subsampled OSWS output file.
  type: File
  inputBinding:
    prefix: --out
- id: subsample_ratio
  doc: 'Subsample ratio used per input file.  [default: 1]'
  type: double
  inputBinding:
    prefix: --subsample_ratio
- id: test
  doc: '/ --no-test       Run in test mode with fixed seed.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- subsample
