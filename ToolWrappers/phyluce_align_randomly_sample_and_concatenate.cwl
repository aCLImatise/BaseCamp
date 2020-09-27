class: CommandLineTool
id: phyluce_align_randomly_sample_and_concatenate.cwl
inputs:
- id: in_alignments
  doc: "The directory containing NEXUS alignments to sample\nand concatenate"
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_output_directory_hold
  doc: The output directory to hold concatenated files
  type: Directory
  inputBinding:
    prefix: --output
- id: in_sample_size
  doc: The number of loci to sample
  type: long
  inputBinding:
    prefix: --sample-size
- id: in_replicates
  doc: The number of replicate samples to take
  type: long
  inputBinding:
    prefix: --replicates
- id: in_verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
- id: in_var_6
  doc: '[--sample-size SAMPLE_SIZE]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_hold
  doc: The output directory to hold concatenated files
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_hold)
cwlVersion: v1.1
baseCommand:
- phyluce_align_randomly_sample_and_concatenate
