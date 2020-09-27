class: CommandLineTool
id: rgt_hint_training.cwl
inputs:
- id: in_reads_file
  doc: The BAM file containing the DNase-seq or ATAC-seq
  type: File
  inputBinding:
    prefix: --reads-file
- id: in_bias_table
  doc: ',FILE1_R'
  type: File
  inputBinding:
    prefix: --bias-table
- id: in_semi_supervised
  doc: If used, HMM model will be trained using semi-
  type: boolean
  inputBinding:
    prefix: --semi-supervised
- id: in_signal_file
  doc: The txt file containing the DNase-seq or ATAC-seq
  type: File
  inputBinding:
    prefix: --signal-file
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    prefix: --organism
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rgt-hint
- training
