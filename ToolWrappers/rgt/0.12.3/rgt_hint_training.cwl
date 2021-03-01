class: CommandLineTool
id: rgt_hint_training.cwl
inputs:
- id: in_reads_file
  doc: The BAM file containing the DNase-seq or ATAC-seq
  type: File?
  inputBinding:
    prefix: --reads-file
- id: in_annotate_file
  doc: A annotate file containing all the states.
  type: long?
  inputBinding:
    prefix: --annotate-file
- id: in_bias_table
  doc: ',FILE1_R'
  type: File?
  inputBinding:
    prefix: --bias-table
- id: in_semi_supervised
  doc: "If used, HMM model will be trained using semi-\nsupervised learning."
  type: boolean?
  inputBinding:
    prefix: --semi-supervised
- id: in_signal_file
  doc: "The txt file containing the DNase-seq or ATAC-seq\nsignals used to train HMM\
    \ model."
  type: File?
  inputBinding:
    prefix: --signal-file
- id: in_num_states
  doc: The states number of HMM model.
  type: long?
  inputBinding:
    prefix: --num-states
- id: in_output_location
  doc: "Path where the output bias table files will be\nwritten."
  type: File?
  inputBinding:
    prefix: --output-location
- id: in_output_prefix
  doc: "The prefix for results files.\n"
  type: string?
  inputBinding:
    prefix: --output-prefix
- id: in_reads
  doc: --chrom STRING        The name of chromosome used to train HMM
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_location
  doc: "Path where the output bias table files will be\nwritten."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_location)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- training
