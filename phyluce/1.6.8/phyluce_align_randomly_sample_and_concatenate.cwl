class: CommandLineTool
id: phyluce_align_randomly_sample_and_concatenate.cwl
inputs:
- id: alignments
  doc: The directory containing NEXUS alignments to sample and concatenate
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: The output directory to hold concatenated files
  type: string
  inputBinding:
    prefix: --output
- id: sample_size
  doc: The number of loci to sample
  type: string
  inputBinding:
    prefix: --sample-size
- id: replicates
  doc: The number of replicate samples to take
  type: string
  inputBinding:
    prefix: --replicates
- id: verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_randomly_sample_and_concatenate
