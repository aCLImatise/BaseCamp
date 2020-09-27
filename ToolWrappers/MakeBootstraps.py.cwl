class: CommandLineTool
id: MakeBootstraps.py.cwl
inputs:
- id: in_number_simulated_datasets
  doc: Number of simulated datasets to create (100 default).
  type: long
  inputBinding:
    prefix: -n
- id: in_template
  doc: "The template for the permuted data file names. Should\nnot include the path,\
    \ which is specified using the -p\noption. The iteration number is indicated with\
    \ a \"#\".\nFor example: 'permuted/counts.permuted_#.txt'If not\nprovided a '.permuted_#.txt'\
    \ suffix will be added to\nthe counts file name."
  type: long
  inputBinding:
    prefix: --template
- id: in_path
  doc: "The path to which permuted data will be written. If\nnot provided files will\
    \ be written to the cwd.\n"
  type: File
  inputBinding:
    prefix: --path
- id: in_make
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_counts_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_5
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_simulated
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_datasets
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_used
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_get
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_pseudo
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_p_values_dot
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path
  doc: "The path to which permuted data will be written. If\nnot provided files will\
    \ be written to the cwd.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_path)
cwlVersion: v1.1
baseCommand:
- MakeBootstraps.py
