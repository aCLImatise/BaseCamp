class: CommandLineTool
id: ../../../RADpainter_paint.cwl
inputs:
- id: ploidy
  doc: ploidy of the species being analysed (default is 2N, i.e. diploid)
  type: string
  inputBinding:
    prefix: --ploidy
- id: chr
  doc: output per-chromosome coancestry matrices
  type: boolean
  inputBinding:
    prefix: --chr
- id: run_name
  doc: run-name will be included in the output file name(s)
  type: boolean
  inputBinding:
    prefix: --run-name
- id: missing_two
  doc: (deprecated) output a conancestry matrix with missing data treated as if any
    pair of individuals are equally distant
  type: boolean
  inputBinding:
    prefix: --missing2
- id: input_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- RADpainter
- paint
