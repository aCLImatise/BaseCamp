class: CommandLineTool
id: nanosimh_train.cwl
inputs:
- id: in_in_file
  doc: training ONT real reads, must be fasta files
  type: string
  inputBinding:
    prefix: --infile
- id: in_ref
  doc: reference genome of the training reads
  type: string
  inputBinding:
    prefix: --ref
- id: in_maf
  doc: user can provide their own alignment file, with maf
  type: File
  inputBinding:
    prefix: --maf
- id: in_num_bins
  doc: number of bins (for development) [20]
  type: long
  inputBinding:
    prefix: --num-bins
- id: in_no_model_fit
  doc: no model fitting
  type: boolean
  inputBinding:
    prefix: --no-model-fit
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_extension
  doc: -p str, --profile str
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nanosimh_train
