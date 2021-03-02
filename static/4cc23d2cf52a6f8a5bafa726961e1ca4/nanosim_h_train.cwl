class: CommandLineTool
id: nanosim_h_train.cwl
inputs:
- id: in_in_file
  doc: training ONT real reads, must be fasta files
  type: string?
  inputBinding:
    prefix: --infile
- id: in_maf
  doc: user can provide their own alignment file, with maf
  type: File?
  inputBinding:
    prefix: --maf
- id: in_no_model_fit
  doc: no model fitting
  type: boolean?
  inputBinding:
    prefix: --no-model-fit
- id: in_b
  doc: ''
  type: long?
  inputBinding:
    prefix: -b
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_extension
  doc: -b int, --num-bins int
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nanosim-h-train
