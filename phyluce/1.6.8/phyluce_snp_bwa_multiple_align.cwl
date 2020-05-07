class: CommandLineTool
id: phyluce_snp_bwa_multiple_align.cwl
inputs:
- id: config
  doc: A configuration file containing the reference-to-read sample mapping and some
    metadata
  type: string
  inputBinding:
    prefix: --config
- id: output
  doc: The directory in which to store the SNPs files
  type: string
  inputBinding:
    prefix: --output
- id: subfolder
  doc: A subdirectory, below the level of the group, containing the reads
  type: string
  inputBinding:
    prefix: --subfolder
- id: cores
  doc: The number of compute cores/threads to use
  type: string
  inputBinding:
    prefix: --cores
- id: verbosity
  doc: The logging level to use
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
- id: no_remove_duplicates
  doc: Do not remove duplicate reads.
  type: boolean
  inputBinding:
    prefix: --no-remove-duplicates
- id: mem
  doc: Use bwa mem.
  type: boolean
  inputBinding:
    prefix: --mem
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_snp_bwa_multiple_align
