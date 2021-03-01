class: CommandLineTool
id: RADpainter_paint.cwl
inputs:
- id: in_ploidy
  doc: ploidy of the species being analysed (default is 2N, i.e. diploid)
  type: long?
  inputBinding:
    prefix: --ploidy
- id: in_chr
  doc: output per-chromosome coancestry matrices
  type: boolean?
  inputBinding:
    prefix: --chr
- id: in_run_name
  doc: run-name will be included in the output file name(s)
  type: File?
  inputBinding:
    prefix: --run-name
- id: in_missing_two
  doc: "(deprecated) output a conancestry matrix with missing data treated\nas if\
    \ any pair of individuals are equally distant"
  type: boolean?
  inputBinding:
    prefix: --missing2
- id: in_input_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_run_name
  doc: run-name will be included in the output file name(s)
  type: File?
  outputBinding:
    glob: $(inputs.in_run_name)
hints: []
cwlVersion: v1.1
baseCommand:
- RADpainter
- paint
