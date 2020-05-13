class: CommandLineTool
id: nanosim_h_train.cwl
inputs:
- id: in_file
  doc: training ONT real reads, must be fasta files
  type: string
  inputBinding:
    prefix: --infile
- id: maf
  doc: user can provide their own alignment file, with maf extension
  type: string
  inputBinding:
    prefix: --maf
- id: num_bins
  doc: number of bins (for development) [20]
  type: long
  inputBinding:
    prefix: --num-bins
- id: no_model_fit
  doc: no model fitting
  type: boolean
  inputBinding:
    prefix: --no-model-fit
outputs: []
cwlVersion: v1.1
baseCommand:
- nanosim-h-train
