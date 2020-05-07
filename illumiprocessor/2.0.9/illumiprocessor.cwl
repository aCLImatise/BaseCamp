class: CommandLineTool
id: illumiprocessor.cwl
inputs:
- id: input
  doc: 'The input directory of raw reads to trim. (default: None)'
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'The output directory of clean reads to create. (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: config
  doc: 'A configuration file containing the tag:sample mapping and renaming options.
    (default: None)'
  type: string
  inputBinding:
    prefix: --config
- id: trim_mo_matic
  doc: 'The path to the trimmomatic-0.XX.jar file. (default: /tmp/tmpk1sf2i_q/bin/trimmomatic)'
  type: string
  inputBinding:
    prefix: --trimmomatic
- id: min_len
  doc: 'The minimum length of reads to keep. (default: 40)'
  type: long
  inputBinding:
    prefix: --min-len
- id: no_merge
  doc: 'When trimming PE reads, do not merge singleton files. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-merge
- id: cores
  doc: 'Number of compute cores to use. (default: 1)'
  type: string
  inputBinding:
    prefix: --cores
- id: r1_pattern
  doc: 'An optional regex pattern to find R1 reads. (default: None)'
  type: string
  inputBinding:
    prefix: --r1-pattern
- id: r2_pattern
  doc: 'An optional regex pattern to find R2 reads. (default: None)'
  type: string
  inputBinding:
    prefix: --r2-pattern
- id: se
  doc: 'Single-end reads. (default: False)'
  type: boolean
  inputBinding:
    prefix: --se
- id: phred
  doc: 'The type of fastq encoding used. (default: phred33)'
  type: string
  inputBinding:
    prefix: --phred
- id: log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: string
  inputBinding:
    prefix: --log-path
- id: verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- illumiprocessor
