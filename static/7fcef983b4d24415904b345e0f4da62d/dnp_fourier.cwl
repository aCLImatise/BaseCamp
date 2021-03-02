class: CommandLineTool
id: dnp_fourier.cwl
inputs:
- id: in_sequence
  doc: sequence
  type: string?
  inputBinding:
    prefix: -f
- id: in_table
  doc: table
  type: string?
  inputBinding:
    prefix: -o
- id: in_of_window_smoothing
  doc: of window of smoothing
  type: long?
  inputBinding:
    prefix: -l
- id: in_normalisation_base_normalization
  doc: "of normalisation:\n0 base normalization\n1 linear normalization\n2 quadratic\
    \ normalization"
  type: long?
  inputBinding:
    prefix: -n
- id: in_output_table_normalization
  doc: "of output table:\n1 normalization\n2 smoothing\n3 Fourier transform\nS.Hosid\
    \ 2008 - 2018\n"
  type: long?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dnp-fourier
