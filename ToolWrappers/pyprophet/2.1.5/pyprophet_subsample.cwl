class: CommandLineTool
id: pyprophet_subsample.cwl
inputs:
- id: in_in
  doc: OpenSWATH input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: in_out
  doc: Subsampled OSWS output file.
  type: File
  inputBinding:
    prefix: --out
- id: in_subsample_ratio
  doc: 'Subsample ratio used per input file.  [default: 1]'
  type: double
  inputBinding:
    prefix: --subsample_ratio
- id: in_test
  doc: '/ --no-test       Run in test mode with fixed seed.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --test
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Subsampled OSWS output file.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- pyprophet
- subsample
